# \file      CMakeList.txt
# \brief     Configuration file at component level
# \details   Project called by components CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      07/04/2015
# \HowTo     This file should not be modified as it follows standards of components directory hierarchy

include(conf/versionConf.cmake)


set(LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)  # Set the output library path
set(COMPONENT_LIB_NAME "${COMPONENT_NAME}")  # Set the name of the library

# search for all source file
file(GLOB_RECURSE SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/* ${CMAKE_CURRENT_SOURCE_DIR}/include/*)  # Create a temporary file with all files concerned

# search for all include directories
set(INCLUDE_DIRS ${INCLUDE_DIRS} ${CMAKE_CURRENT_SOURCE_DIR}/include)  # Append all common include directories

# If you want to add a package, just add : (and fill the VersionConf.cmake with the proper version
#                   find_package(package_lib_name ${nomdupackage_PACKAGE_VERSION})
#                   set(INCLUDE_DIRS ${INCLUDE_DIRS} ${mainIncludeFileName_INCLUDE_DIRS})
#                   set(LIBS ${LIBS} ${mainLibFileName_LIBRARIES})

# Build the target as a library
add_library(${COMPONENT_LIB_NAME} STATIC ${SRC_FILES})

target_include_directories(${COMPONENT_LIB_NAME} PUBLIC ${INCLUDE_DIRS})  # Give path to include directories
target_link_libraries(${COMPONENT_LIB_NAME} ${LIBS})  # Give library linked to this target


#Configuration file
export(TARGETS ${COMPONENT_LIB_NAME} FILE "${CMAKE_CURRENT_SOURCE_DIR}/conf/export/targets.cmake")
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/conf/config.cmake.in ${CMAKE_CURRENT_SOURCE_DIR}/conf/export/${COMPONENT_LIB_NAME}Config.cmake)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/conf/configVersion.cmake.in ${CMAKE_CURRENT_SOURCE_DIR}/conf/export/${COMPONENT_LIB_NAME}ConfigVersion.cmake)

# Delivery step setup only in Release mode
if(CMAKE_BUILD_TYPE MATCHES "Release")
    include(conf/installConf.cmake)
endif(CMAKE_BUILD_TYPE MATCHES "Release")

# Call tests CMakeList.txt
#add_subdirectory(tests)
