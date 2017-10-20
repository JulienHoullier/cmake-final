# \file      CMakeList.txt
# \brief     Configuration file at component/tests level
# \details   Project called by component CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      07/04/2015
# \HowTo     This file should not be modified as it follows standards of component/tests directory hierarchy

project(node_test)

set(COMPONENT_TEST_EXE_NAME "${COMPONENT_NAME}_tests")  # Set the name of the executable
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)  # Set the output binary path

# Packages
find_package(unittest++)
set(INCLUDE_DIRS ${INCLUDE_DIRS} ${unittest++_INCLUDE_DIRS})
set(LIBS ${LIBS} ${unittest++_LIBRARIES})

# Search source files
file(GLOB_RECURSE SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/*)  # search for all source file

# INCLUDE_DIRS is passed by inheritance of the component CMakeList
# internal component LIBS is passed by inheritance of the component CMakeList

# Add component library
set(LIBS ${LIBS} ${COMPONENT_LIB_NAME})

# Build the target as a executable
add_executable(${COMPONENT_TEST_EXE_NAME} ${SRC_FILES})

target_include_directories(${COMPONENT_TEST_EXE_NAME} PUBLIC ${INCLUDE_DIRS})  # Give path to include directories
target_link_libraries( ${COMPONENT_TEST_EXE_NAME} ${LIBS})  # Give library linked to this target
