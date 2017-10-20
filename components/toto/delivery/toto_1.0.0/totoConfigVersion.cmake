# \file      nodeConfigVersion.cmake.in
# \brief     Template Cmake Configuration version file at component level used by cmake to generate the nodeVersionConf.cmake
# \details   Project called by components CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      13/04/2015
# \HowTo     This file should not be modified

set(PACKAGE_VERSION "1.0.0")
 
# Check whether the requested PACKAGE_FIND_VERSION is compatible
if("" VERSION_LESS "")
  set(PACKAGE_VERSION_COMPATIBLE FALSE)
else()
  set(PACKAGE_VERSION_COMPATIBLE TRUE)
  if ("" VERSION_EQUAL "")
    set(PACKAGE_VERSION_EXACT TRUE)
  endif()
endif()
