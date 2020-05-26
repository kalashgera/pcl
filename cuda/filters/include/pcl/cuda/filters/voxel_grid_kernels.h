#ifndef PCL_CUDA_FILTERS_VOXEL_GRID_KERNELS_H_
#define PCL_CUDA_FILTERS_VOXEL_GRID_KERNELS_H_

#include <pcl/cuda/point_types.h>

namespace pcl
{
    namespace cuda
    {
        struct Min3DKernel
        {
            inline __device__
            float3 operator () (const float3& pt1, const float3& pt2) const
            {   
                float3 pt_min;
                pt_min.x = pt1.x < pt2.x ? pt1.x : pt2.x;
                pt_min.y = pt1.y < pt2.y ? pt1.y : pt2.y;
                pt_min.z = pt1.z < pt2.z ? pt1.z : pt2.z;

                return pt_min;
            }
        };

        struct Max3DKernel
        {
            inline __device__
            float3 operator () (const float3& pt1, const float3& pt2) const
            {
                float3 pt_max;
                pt_max.x = pt1.x > pt2.x ? pt1.x : pt2.x;
                pt_max.y = pt1.y > pt2.y ? pt1.y : pt2.y;
                pt_max.z = pt1.z > pt2.z ? pt1.z : pt2.z;
                
                return pt_max;
            }
        };

        struct cloud_point_index_idx 
        {
            unsigned int idx;
            unsigned int cloud_point_index;
            unsigned int arr_idx;

            __host__ __device__ cloud_point_index_idx (const unsigned int & idx_,const unsigned int & cloud_point_index_) : idx (idx_), cloud_point_index (cloud_point_index_) {} 
            __host__ __device__ cloud_point_index_idx () : idx (0), cloud_point_index(0), arr_idx(0) {}
            inline __device__ bool operator < (const cloud_point_index_idx &p) const { return (idx < p.idx); }
            inline __host__ __device__ bool operator == (const cloud_point_index_idx &rhs)
            {
                return (idx == rhs.idx && cloud_point_index == rhs.cloud_point_index);
            }
        };

        template <template <typename> class Storage>
        class CloudIndexContainer
        {
            public :
                CloudIndexContainer () {}

                typename Storage<cloud_point_index_idx>::type indices_;
        };

        struct cloudIdxCp
        {   
            typedef thrust::tuple<cloud_point_index_idx, int> IntIdxTup;

            inline __device__ cloud_point_index_idx operator () (IntIdxTup tup)
            {
                cloud_point_index_idx cpi = tup.get<0>();
                int idx = tup.get<1>();

                cloud_point_index_idx cpi_new;
                cpi_new.idx = cpi.idx;
                cpi_new.cloud_point_index = cpi.cloud_point_index;
                cpi_new.arr_idx = idx;

                return cpi_new;
            }
        };

        template <template <typename> class Storage>
        struct LeafInsert
        {
            typedef thrust::tuple<float3, int> PtIdxTup;

            LeafInsert (float4& inv_leaf_size,std::vector<int> minb,std::vector<int> mul)
                : inverse_leaf_size_ (inv_leaf_size)
                , min_b_0 (minb[0]), min_b_1(minb[1]), min_b_2(minb[2])
                , divb_mul_0 (mul[0]), divb_mul_1(mul[1]), divb_mul_2(mul[2])
            {}

            inline __device__
            cloud_point_index_idx operator () (PtIdxTup tup)
            {  
                int cp_ = tup.get<1>();
                float3 pt = tup.get<0>();

                int ijk0 = static_cast<int> (floor (pt.x * inverse_leaf_size_.x) - min_b_0);
                int ijk1 = static_cast<int> (floor (pt.y * inverse_leaf_size_.y) - min_b_1);
                int ijk2 = static_cast<int> (floor (pt.z * inverse_leaf_size_.z) - min_b_2);

                int idx = ijk0 * divb_mul_0 + ijk1 * divb_mul_1 + ijk2 * divb_mul_2;
                cloud_point_index_idx ind (idx, static_cast<unsigned int> (cp_));
                return ind;
            }

            float4 inverse_leaf_size_;
            int min_b_0;
            int divb_mul_0;
            int min_b_1;
            int divb_mul_1;
            int min_b_2;
            int divb_mul_2;
        };

        struct IdxUnique
        {
            inline __device__ bool operator () (const cloud_point_index_idx & cp1, const cloud_point_index_idx & cp2) const
            {
                return cp1.idx == cp2.idx;
            }
        };

        template <template <typename> class Storage> 
        struct centroidKernel
        {
            centroidKernel(const boost::shared_ptr<const CloudIndexContainer<Storage> > & container,
                           const boost::shared_ptr<const PointCloudAOS<Storage> > & input) 
                : inds_ (thrust::raw_pointer_cast(&container->indices_[0]))
                , points_ (thrust::raw_pointer_cast(&input->points[0]))
            {} 

            inline __device__ 
            PointXYZRGB operator () (cloud_point_index_idx cpi)
            {
                PointXYZRGB centroid;

                int i = cpi.arr_idx;
                centroid.x = 0.0; centroid.y = 0.0; centroid.z = 0.0;
                int num_pts = 0;
                while (inds_[i].idx == cpi.idx)
                {
                    centroid += points_[inds_[i].cloud_point_index];
                    i++;
                    num_pts++;
                }

                centroid.x /= num_pts;
                centroid.y /= num_pts;
                centroid.z /= num_pts;

                return centroid;
            }

            const cloud_point_index_idx * inds_;
            const PointXYZRGB * points_;
        };
    }
}

#endif