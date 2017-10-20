# \file      CMakeList.txt
# \brief     Configuration file at component/tests level
# \details   Project called by component CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      07/04/2015
# \HowTo     This file should not be modified as it follows standards of project/tests directory hierarchy

project(project1_test)

set(PROJECT_TEST_EXE_NAME "${PROJECT_NAME}_tests")  # Set the output binary path
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)  # Set the name of the executable

# Packages
find_package(unittest++)
set(INCLUDE_DIR ${INCLUDE_DIR} ${unittest++_INCLUDE_DIRS})
set(LIBS ${LIBS} ${unittest++_LIBRARIES})

# Search source files
file(GLOB_RECURSE SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/*)  # search for all source file

# INCLUDE_DIRS is passed by inheritance of the project CMakeList
# internal project LIBS is passed by inheritance of the component CMakeList

# Add project library (to add if the project is a library)
# set(LIBS ${LIBS} ${PROJECT_LIB_NAME})

# Build the target as a executable
add_executable(${PROJECT_TEST_EXE_NAME} ${SRC_FILES})

target_include_directories(${PROJECT_TEST_EXE_NAME} PUBLIC ${INCLUDE_DIR})
target_link_libraries(${PROJECT_TEST_EXE_NAME} ${LIBS})

