# \file      CMakeList.txt
# \brief     Configuration file at project level
# \details   Project called by projects CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      07/04/2015
# \HowTo     This file should not be modified as it follows standards of project directory hierarchy

if(CMAKE_BUILD_TYPE MATCHES "Release")
    include(conf/versionConf.cmake)
    message("VERSION DU PROJET ${PROJECT_NAME} : ${${PROJECT_NAME}_VERSION}\n")
else(CMAKE_BUILD_TYPE MATCHES "Release")
    project(${PROJECT_NAME})
    #set(NODE_PACKAGE_VERSION "1.0.0") # Add this line for each component
endif(CMAKE_BUILD_TYPE MATCHES "Release")


find_package(node ${NODE_PACKAGE_VERSION} EXACT REQUIRED)
set(INCLUDE_DIR ${INCLUDE_DIR} ${node_INCLUDE_DIRS})
set(LIBS ${LIBS} ${node_LIBRARIES})

# If you want to add a package, just add : (and fill the VersionConf.cmake with the proper version
#                   find_package(package_lib_name ${nomdupackage_PACKAGE_VERSION})
#                   set(INCLUDE_DIRS ${INCLUDE_DIRS} ${mainIncludeFileName_INCLUDE_DIRS})
#                   set(LIBS ${LIBS} ${mainLibFileName_LIBRARIES})


set(PROJECT_EXE_NAME "${PROJECT_NAME}_app")  # Set the output executable path
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)  # Set the name of the executable

# search for all source files
file(GLOB_RECURSE SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/* ${CMAKE_CURRENT_SOURCE_DIR}/include/*)  # Create a temporary file with all files concerned

# set include directories
set(INCLUDE_DIR ${INCLUDE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/include)

# Build the target as a executable
add_executable(${PROJECT_EXE_NAME} ${SRC_FILES})

target_include_directories(${PROJECT_EXE_NAME} PUBLIC ${INCLUDE_DIR})  # Give path to include directories
target_link_libraries(${PROJECT_EXE_NAME} ${LIBS})  # Give library linked to this target

# Delivery step setup only in Release mode
if(CMAKE_BUILD_TYPE MATCHES "Release")
    include(conf/installConf.cmake)
endif(CMAKE_BUILD_TYPE MATCHES "Release")

# Call tests CMakeList.txt
#add_subdirectory(tests)

