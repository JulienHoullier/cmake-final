# \file      nodeConfig.cmake.in
# \brief     Template Cmake Configuration file at component level used by cmake to generate the nodeConf.cmake
# \details   Project called by components CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      13/04/2015
# \HowTo     This file should be modified if needed


#  Config file for the node package
#  It defines the following variables
#  ${COMPONENT_NAME}_INCLUDE_DIRS - include directories for node
#  ${COMPONENT_NAME}_LIBRARIES    - libraries to link against
#  ${COMPONENT_NAME}_EXECUTABLE   - the bar executable

# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET node AND NOT ${node_BINARY_DIR})
    include("${node_CMAKE_DIR}/targets.cmake")
endif()
 
set(node_LIBRARIES node)
