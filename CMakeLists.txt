# \file      CMakeList.txt
# \brief     Configuration file at root level
# \details   Project input file for cmake
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      07/04/2015
# \warning   This file should be modified when adding a components or a common lib

project(SmartPath)

message("BUILD TYPE : ${CMAKE_BUILD_TYPE}\n")

cmake_minimum_required(VERSION 3.0)  # Minimum version
cmake_policy(VERSION 3.0)  # CMake version used in the whole tree regarded the policy.

include(CMakeMacros.cmake)

message("System name / Complete System name : ${CMAKE_SYSTEM_NAME} /  ${CMAKE_SYSTEM}\n")

# Common lib conf (for each common lib you have to add a new line to target the Findlibname.cmake.
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR}/common/unittest++/conf/) # Unittest++

SUBDIRLIST(COMPONENTS ${CMAKE_SOURCE_DIR}/components)

# Target the right path when to search for componentnameConf.cmake and versionConf.cmake.
# For each component, you have to add these two lines.
foreach(component ${COMPONENTS})
if(CMAKE_BUILD_TYPE MATCHES Release)
   set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ${CMAKE_SOURCE_DIR}/components/${component}/delivery)
	message("dir ${${component}_DIR}")
set(${component}_DIR ${CMAKE_SOURCE_DIR}/components/${component}/conf/export)
else(CMAKE_BUILD_TYPE MATCHES Release)
   set(${component}_DIR ${CMAKE_SOURCE_DIR}/components/${component}/conf/export)
   message("dir ${${component}_DIR}")
endif(CMAKE_BUILD_TYPE MATCHES Release)
endforeach()


# Call CMakeList.txt in components to configure the build of the components
add_subdirectory(components)


message("COMPONENT_ONLY : ${COMPONENT_ONLY}\n")  # If this setting is set to YES, only component will
                                                 # be compiled (in order to do a release without dependencies error
                                                 # with projects


add_compile_options(-std=c++11)

if(NOT(COMPONENT_ONLY MATCHES YES))
    #Call CMakeList.txt in projects to configure the build of the projects
    add_subdirectory(projects)
endif(NOT(COMPONENT_ONLY MATCHES YES))

