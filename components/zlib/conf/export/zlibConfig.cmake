# \file      nodeConfig.cmake.in
# \brief     Template Cmake Configuration file at component level used by cmake to generate the nodeConf.cmake
# \details   Project called by components CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      13/04/2015
# \HowTo     This file should be modified if needed


#  Config file for the node package
#  It defines the following variables
#  zlib_INCLUDE_DIRS - include directories for node
#  zlib_LIBRARIES    - libraries to link against
#  zlib_EXECUTABLE   - the bar executable

# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET zlib AND NOT /home/root2/dev/project_cmake_complexe/build/components/zlib)
    include("/targets.cmake")
endif()
 
set(zlib_LIBRARIES zlib)
