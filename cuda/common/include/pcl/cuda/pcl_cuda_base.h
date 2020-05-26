/*
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2011, Willow Garage, Inc.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of Willow Garage, Inc. nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 */
#ifndef PCL_CUDA_PCL_CUDA_BASE_H_
#define PCL_CUDA_PCL_CUDA_BASE_H_

#include <boost/shared_ptr.hpp>
#include <pcl/cuda/point_cloud.h>

#include <pcl/pcl_exports.h>

namespace pcl
{
namespace cuda
{
  ///////////////////////////////////////////////////////////////////////////////////////////
  /** \brief PCL base class. Implements methods that are used by all PCL objects. 
    */
  template <template <typename> class Storage>
  class PCLCUDABase
  {
    public:
      typedef PointCloudAOS<Storage> PointCloud;
      typedef typename PointCloud::Ptr PointCloudPtr;
      typedef typename PointCloud::ConstPtr PointCloudConstPtr;

      typedef boost::shared_ptr <typename Storage<int>::type> IndicesPtr;

      /** \brief Empty constructor. */
      PCLCUDABase () : 
        input_(),
        x_idx_ (-1),
        y_idx_ (-1),
        z_idx_ (-1)
      {
      }

      /** \brief Provide a pointer to the input dataset
        * \param cloud the const boost shared pointer to a PointCloud message
        */
      virtual inline void 
      setInputCloud (const PointCloudConstPtr &cloud) 
      { 
        input_ = cloud; 

        int s = cloud->points.size ();

        if (s > 0) 
        {
          x_idx_ = y_idx_ = z_idx_ = s - 1;
        }
      }

      /** \brief Get a pointer to the input host point cloud dataset. */
      inline PointCloudConstPtr const 
      getInputCloud () 
      { 
        return (input_); 
      }

    protected:
      /** \brief The input point cloud dataset. */
      //PointCloudConstPtr input_;
      PointCloudConstPtr input_;

      IndicesPtr indices_;
      int x_idx_, y_idx_, z_idx_;

      /** \brief This method should get called before starting the actual computation. */
      bool
      initCompute ()
      {
        // Check if input was set
        if (!input_)
          return (false);
        return (true);
      }

      /** \brief This method should get called after finishing the actual computation. */
      bool
      deinitCompute ()
      {
        return (true);
      }
  };
} // namespace
} // namespace

#endif  //#ifndef PCL_PCL_BASE_H_
