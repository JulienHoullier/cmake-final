#  Config file for the node package
#  It defines the following variables
#  node_INCLUDE_DIRS - include directories for node
#  node_LIBRARIES    - libraries to link against
#  node_EXECUTABLE   - the bar executable
 
# Compute paths
#get_filename_component(node_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
#set(node_INCLUDE_DIRS ../include)

# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET node AND NOT node_BINARY_DIR)
	include("${node_CMAKE_DIR}/nodeTargets.cmake")
endif()
 
# These are IMPORTED targets created by nodeTargets.cmake
set(node_LIBRARIES node)
# set(node_EXECUTABLE bar)
