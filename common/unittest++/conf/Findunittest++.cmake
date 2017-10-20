# \file      unittest++Config.cmake
# \brief     Configuration file at tool level
# \details   Project called by common CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      07/04/2015
# \HowTo     Set package unittest++ variables

set(COMMON_LIB_NAME unittest++)

set(${COMMON_LIB_NAME}_VERSION 1.4)

set(ABSOLUTE_PATH ${CMAKE_SOURCE_DIR}/common/${COMMON_LIB_NAME}/${${COMMON_LIB_NAME}_VERSION})

set(LIB_PATH ${ABSOLUTE_PATH}/lib/${CMAKE_SYSTEM_NAME})

find_path(${COMMON_LIB_NAME}_INCLUDE_DIRS UnitTest++.h PATH ${ABSOLUTE_PATH}/include NO_DEFAULT_PATH)
find_library(${COMMON_LIB_NAME}_LIBRARIES UnitTest++ PATH ${LIB_PATH} NO_DEFAULT_PATH)
