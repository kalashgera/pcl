#ifndef PCL_CUDA_FILTERS_VOXEL_GRID_H_
#define PCL_CUDA_FILTERS_VOXEL_GRID_H_

#include <pcl/cuda/filters/filter.h>
#include <pcl/cuda/point_cloud.h>
#include <pcl/pcl_exports.h>
#include <float.h>
#include "pcl/cuda/filters/voxel_grid_kernels.h"
#include <thrust/sort.h>
#include <thrust/unique.h>
#include <thrust/execution_policy.h>

namespace pcl
{
  namespace cuda
  {
    /** \brief Obtain the maximum and minimum points in 3D from a given point cloud.
     *  \param[in] cloud the pointer to a PointCloudAOS dataset
     *  \param[out] min_pt the minimum data point
     *  \param[out] max_pt the maximum data point
     *
    template <typename InputIteratorT, template <typename> class Storage> void
    getMinMax3D (const boost::shared_ptr<PointCloudAOS<Storage> > &cloud,
                 InputIteratorT begin, InputIteratorT end);
    */

    /** \brief @b VoxelGrid represents implementation of voxel grid
     * filter class adapted for a PointCloudAOS structure to enable 
     * compatibility with CUDA
     * \author Jonah Gourlay
     * \ingroup cuda filters
     */
    template <template <typename> class Storage> 
    class VoxelGrid : public Filter<Storage>
    {
      public:
        using Filter<Storage>::filter_name_;
        using Filter<Storage>::getClassName;
        using Filter<Storage>::input_;
        using Filter<Storage>::indices_;
        using Filter<Storage>::x_idx_;
        using Filter<Storage>::y_idx_;
        using Filter<Storage>::z_idx_;
      
        typedef typename Storage<int>::type VectorXi;
        typedef typename Storage<float>::type VectorXf;
        typedef typename Storage<cloud_point_index_idx>::type VectorCP;
        typedef typename PointIterator<Storage, cloud_point_index_idx>::type VectorCPIter;
        typedef thrust::tuple<float3, int> PtIdxTup;
        typedef typename PointIterator<Storage, const PointXYZRGB>::type PtIter;
        typedef thrust::counting_iterator<int> CountIter;
        typedef thrust::tuple<PtIter, CountIter> TupIter;
        typedef thrust::zip_iterator<TupIter> ZipIter;

        typedef thrust::tuple<VectorCPIter, CountIter> TupIterInt;
        typedef thrust::zip_iterator<TupIterInt> ZipIterInt;

        typedef PointCloudAOS<Storage> PointCloud;
        typedef typename PointCloud::Ptr PointCloudPtr;
        typedef typename PointCloud::ConstPtr PointCloudConstPtr;
        typedef boost::shared_ptr<VoxelGrid> Ptr;
        typedef boost::shared_ptr<const VoxelGrid> ConstPtr;

      public:
        /** \brief Empty constructor. */
        VoxelGrid () :
          leaf_size_ (make_float4 (0.0,0.0,0.0,0.0)),
          inverse_leaf_size_ (make_float4 (0.0,0.0,0.0,0.0)),
          downsample_all_data_ (true),
          save_leaf_layout_ (false),
          leaf_layout_ (),
          min_b_ (4,0),
          max_b_ (4,0),
          div_b_ (4,0),
          divb_mul_ (4,0),
          filter_field_name_ (""),
          filter_limit_min_ (-FLT_MIN),
          filter_limit_max_ (FLT_MAX),
          filter_limit_negative_ (false),
          min_points_per_voxel_ (0)
        {
            filter_name_ = "VoxelGrid";
        }

        /** \brief Destructor. */
        virtual ~VoxelGrid () {}

        /** \brief Set the voxel grid leaf size.
         *  \param[in] lx the leaf size for X
         *  \param[in] ly the leaf size for Y
         *  \param[in] lz the leaf size for Z
         */
        inline void 
        setLeafSize (float lx, float ly, float lz)
        {
          leaf_size_.x = lx; leaf_size_.y = ly; leaf_size_.z = lz;
          // Avoid division errors
          if (leaf_size_.w == 0)
            leaf_size_.w = 1;
          
          inverse_leaf_size_ = make_float4(1.0,1.0,1.0,1.0) / leaf_size_;
        }

        /** \brief Get the voxel grid leaf size. */
        inline float3
        getLeafSize () 
        { 
          float3 leaf_size;
          leaf_size.x = leaf_size_.x;
          leaf_size.y = leaf_size_.y;
          leaf_size.z = leaf_size_.z;

          return leaf_size; 
        }
      
      private:
        float4 leaf_size_;
        float4 inverse_leaf_size_;

        bool downsample_all_data_;
        bool save_leaf_layout_;

        std::vector<int> leaf_layout_;

        std::vector<int> min_b_, max_b_, div_b_, divb_mul_;

        std::string filter_field_name_;

        double filter_limit_min_;
        double filter_limit_max_;

        bool filter_limit_negative_;

        unsigned int min_points_per_voxel_;

        /** \brief Downsample a Point Cloud using a voxelized grid approach
         *  \param[out] output the resultant point cloud
         */ 
        void
        applyFilter (const boost::shared_ptr<PointCloud> &output);
    };
  }
}

#endif //PCL_CUDA_FILTERS_VOXEL_GRID_H_
