# \file      installConf.cmake
# \brief     Configuration file for delivery installation at project level
# \details   Project called by project CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      13/04/2015
# \HowTo     This file should not be modified as it follows standards of project directory hierarchy

#  Set Delivery path.
set(DELIVERY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/delivery/${PROJECT_NAME}_${${PROJECT_NAME}_VERSION}/bin/${CMAKE_SYSTEM_NAME})

set(BINARY_DIR ${DELIVERY_DIR}/bin/${CMAKE_SYSTEM_NAME}) # Set where libraries will be put (depends on the system)

if(NOT EXISTS ${BINARY_DIR})  # Install the binary
    install(TARGETS ${PROJECT_EXE_NAME} DESTINATION ${BINARY_DIR})
else(NOT EXISTS ${BINARY_DIR})
    message(ERROR "\nDELIVERY VERSION ${${PROJECT_NAME}_VERSION} OF ${PROJECT_NAME} for system ${CMAKE_SYSTEM_NAME} already installed. Please increment the version in conf/VersionConf.cmake if it's a new delivery\n")
endif(NOT EXISTS ${BINARY_DIR})
