# \file      installConf.cmake
# \brief     Configuration file for delivery installation at component level
# \details   Project called by components CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      13/04/2015
# \HowTo     This file should not be modified as it follows standards of components directory hierarchy


set(DELIVERY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/delivery/${COMPONENT_NAME}_${${COMPONENT_NAME}_VERSION})  # Set Delivery path.

set(LIBRARY_DIR ${DELIVERY_DIR}/lib/${CMAKE_SYSTEM_NAME})  # Set where libraries will be put (depends on the system)

if(NOT EXISTS ${LIBRARY_DIR})  # We check if for this CMAKE_SYSTEM_NAME, the library has been already delivered
	message("lib dir ${Include_files}")

    file(GLOB_RECURSE Include_files ${CMAKE_CURRENT_SOURCE_DIR}/include/*)  # Get the include files
    install(FILES ${Include_files} DESTINATION ${DELIVERY_DIR}/include)  # Install them in the delivery include

    install(TARGETS ${COMPONENT_LIB_NAME} DESTINATION ${LIBRARY_DIR})  # Install the library


    install(FILES  # Install the Config and ConfigVersionfile to be retrieved with find_package(package_name)
        ${CMAKE_CURRENT_SOURCE_DIR}/conf/export/${COMPONENT_NAME}Config.cmake
        ${CMAKE_CURRENT_SOURCE_DIR}/conf/export/${COMPONENT_NAME}ConfigVersion.cmake
        DESTINATION ${DELIVERY_DIR})

else(NOT EXISTS ${LIBRARY_DIR})
    message(ERROR "\nDELIVERY VERSION ${${COMPONENT_NAME}_VERSION} OF ${COMPONENT_NAME} for system ${CMAKE_SYSTEM_NAME} already installed. Please increment the version in conf/VersionConf.cmake if it's a new delivery\n")
endif(NOT EXISTS ${LIBRARY_DIR})
