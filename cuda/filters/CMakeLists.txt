set(SUBSYS_NAME cuda_filters)
set(SUBSYS_PATH cuda/filters)
set(SUBSYS_DESC "Point Cloud CUDA filters library")
set(SUBSYS_DEPS cuda_common io common)

set(build TRUE)
PCL_SUBSYS_OPTION(build "${SUBSYS_NAME}" "${SUBSYS_DESC}" ON)
mark_as_advanced("BUILD_${SUBSYS_NAME}")
PCL_SUBSYS_DEPEND(build "${SUBSYS_NAME}" DEPS ${SUBSYS_DEPS})
PCL_SET_SUBSYS_INCLUDE_DIR("${SUBSYS_NAME}" "${SUBSYS_PATH}")

if (build)
    set(srcs
        src/voxel_grid.cu
        )
    
    set(incs
        include/pcl/cuda/filters/voxel_grid.h
        include/pcl/cuda/filters/filter.h
        include/pcl/cuda/filters/voxel_grid_kernels.h
        )

    set(LIB_NAME "pcl_${SUBSYS_NAME}")
    include_directories("${CMAKE_CURRENT_SOURCE_DIR}/include")
    PCL_CUDA_ADD_LIBRARY("${LIB_NAME}" "${SUBSYS_NAME}" ${srcs} ${incs})
    
    set(EXT_DEPS "")
    PCL_MAKE_PKGCONFIG("${LIB_NAME}" "${SUBSYS_NAME}" "{SUBSYS_DESC}"
      "${SUBSYS_DEPS}" "${EXT_DEPS}" "" "" "")
    
    PCL_ADD_INCLUDES("${SUBSYS_NAME}" "${SUBSYS_PATH}" ${incs})

endif()
