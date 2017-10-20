# \file      nodeConfig.cmake.in
# \brief     Template Cmake Configuration file at component level used by cmake to generate the nodeConf.cmake
# \details   Project called by components CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      13/04/2015
# \HowTo     This file should be modified if needed


#  Config file for the node package
#  It defines the following variables
#  toto_INCLUDE_DIRS - include directories for node
#  toto_LIBRARIES    - libraries to link against
#  toto_EXECUTABLE   - the bar executable

# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET toto AND NOT /home/root2/dev/project_cmake_complexe/build/components/toto)
    include("/targets.cmake")
endif()
 
set(toto_LIBRARIES toto)
