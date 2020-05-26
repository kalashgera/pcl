#ifdef _WIN32
# define NOMINMAX
# define WIN32_LEAN_AND_MEAN
# include <windows.h>
#endif

#include <pcl/pcl_exports.h>

#include "pcl/cuda/filters/voxel_grid.h"
#include "pcl/cuda/time_gpu.h"
#include <stdio.h>
#include <pcl/cuda/time_cpu.h>
#include <pcl/common/io.h>


namespace pcl
{
    namespace cuda
    {
        template <typename InputIteratorT> void
        getMinMax3D (InputIteratorT begin, InputIteratorT end, 
                     float4 &min_p, float4 &max_p)
        {   
            float3 init_min; 
            init_min.x = init_min.y = init_min.z = FLT_MAX;

            float3 init_max;
            init_max.x = init_max.y = init_max.z = -FLT_MAX;
            
            float3 min_pt = thrust::reduce(begin, end, init_min, Min3DKernel());
            min_p.x = min_pt.x; min_p.y = min_pt.y; min_p.z = min_pt.z; min_p.w = 0.0f;
            
            float3 max_pt = thrust::reduce(begin, end, init_max, Max3DKernel());
            max_p.x = max_pt.x; max_p.y = max_pt.y; max_p.z = max_pt.z; max_p.w = 0.0f;
        }

        template<template <typename> class Storage> void
        VoxelGrid<Storage>::applyFilter (const boost::shared_ptr <PointCloud> &output)
        {   
            if (input_->points.size () == 0)
            {
                output->width = output->height = 0;
                return;
            }
            size_t nr_points = input_->width * input_->height;

            output->height = 1;

            float4 min_p, max_p;
            PtIter begin = input_->points.begin ();
            PtIter end = input_->points.end ();

            //get 3D minimum and maximum of pointcloud
            getMinMax3D<typename PointIterator<Storage,const PointXYZRGB>::type> (begin, end, min_p, max_p);

            int64_t dx = static_cast<int64_t>((max_p.x - min_p.x) * inverse_leaf_size_.x)+1;
            int64_t dy = static_cast<int64_t>((max_p.y - min_p.y) * inverse_leaf_size_.y)+1;
            int64_t dz = static_cast<int64_t>((max_p.z - min_p.z) * inverse_leaf_size_.z)+1;

            if ( (dx*dy*dz) > static_cast<int64_t>(std::numeric_limits<int32_t>::max()) )
            {
                PCL_WARN("[pcl::cuda::VoxelGrid::applyFilter] Leaf size is too small for the input dataset. Integer indices would overflow.");
            }

            min_b_[0] = static_cast<int> (floor (min_p.x * inverse_leaf_size_.x));
            max_b_[0] = static_cast<int> (floor (max_p.x * inverse_leaf_size_.x));
            min_b_[1] = static_cast<int> (floor (min_p.y * inverse_leaf_size_.y));
            max_b_[1] = static_cast<int> (floor (max_p.y * inverse_leaf_size_.y));
            min_b_[2] = static_cast<int> (floor (min_p.z * inverse_leaf_size_.z));
            max_b_[2] = static_cast<int> (floor (max_p.z * inverse_leaf_size_.z));
            
            div_b_[0] = max_b_[0] - min_b_[0] + 1;
            div_b_[1] = max_b_[1] - min_b_[1] + 1;
            div_b_[2] = max_b_[2] - min_b_[2] + 1;
            div_b_[3] = 0;

            boost::shared_ptr<VectorCP> index_vector (new VectorCP);
            index_vector->resize (nr_points);

            divb_mul_[0] = 1;
            divb_mul_[1] = div_b_[0];
            divb_mul_[2] = div_b_[0] * div_b_[1], 0;
            divb_mul_[3] = 0;

            std::vector<float> pt (4, 0.0);

            LeafInsert<Storage> leaf_inserter = LeafInsert<Storage> (inverse_leaf_size_, min_b_, divb_mul_);

            VectorCPIter out = index_vector->begin();

            CountIter idxFirst(0);
            CountIter idxLast = idxFirst + nr_points;

            ZipIter first = thrust::make_zip_iterator(thrust::make_tuple(begin, idxFirst));
            ZipIter last = thrust::make_zip_iterator(thrust::make_tuple(end, idxLast));

            //insert points into the leafs
            thrust::transform(first, last, out, leaf_inserter);

            VectorCPIter idx_vec_start = index_vector->begin();
            VectorCPIter idx_vec_end = index_vector->end();
            
            //sort so that points with same voxel index are adjacent
            thrust::sort(idx_vec_start, idx_vec_end);

            CountIter outputFirst(0);
            CountIter outputLast = outputFirst + index_vector->size();

            ZipIterInt outputBegin = thrust::make_zip_iterator(thrust::make_tuple(idx_vec_start, outputFirst));
            ZipIterInt outputEnd = thrust::make_zip_iterator(thrust::make_tuple(idx_vec_end, outputLast));

            boost::shared_ptr<VectorCP> index_set (new VectorCP);
            index_set->resize (index_vector->size());

            //figure out original array index of each points
            thrust::transform(outputBegin, outputEnd, index_set->begin(), cloudIdxCp());

            //make a set of all unique voxel indices
            VectorCPIter vecI = thrust::unique(index_set->begin(), index_set->end(), IdxUnique());

            uint32_t total = vecI - index_set->begin();
            output->points.resize (total);
            output->width = total;

            boost::shared_ptr<CloudIndexContainer<Storage> > ind_container (new CloudIndexContainer<Storage>);
            ind_container->indices_ = *index_vector;

            centroidKernel<Storage> centroid_iter = centroidKernel<Storage> (ind_container, input_);

            //create and insert centroids into output cloud
            thrust::transform(index_set->begin(), vecI, output->points.begin(), centroid_iter);
        }

        template PCL_EXPORTS void getMinMax3D<typename PointIterator<Device,const PointXYZRGB>::type>
            (PointIterator<Device,const PointXYZRGB>::type begin,
             PointIterator<Device,const PointXYZRGB>::type end,
             float4 &min_p,
             float4 &max_p);
        template PCL_EXPORTS void getMinMax3D<typename PointIterator<Host,const PointXYZRGB>::type>
            (PointIterator<Host,const PointXYZRGB>::type begin,
             PointIterator<Host,const PointXYZRGB>::type end,
             float4 &min_p,
             float4 &max_p);
        template class PCL_EXPORTS VoxelGrid<Device>;
        template class PCL_EXPORTS VoxelGrid<Host>;
        template class PCL_EXPORTS CloudIndexContainer<Device>;
        template class PCL_EXPORTS CloudIndexContainer<Host>;
    }
}