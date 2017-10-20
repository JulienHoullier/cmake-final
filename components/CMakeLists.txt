# \file      CMakeList.txt
# \brief     Configuration file at components level
# \details   Project called by root CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      07/04/2015
# \HowTo     to add a new component, append these two line at the end of the file (replace component_name_chosen) by the name of the component) :
#                                    set(COMPONENT_NAME "component_name_chosen")
#                                    add_subdirectory(${COMPONENT_NAME})
# Create a temporary file with all files concerned

foreach(component ${COMPONENTS})
 set(COMPONENT_NAME ${component})
 add_subdirectory(${component})
endforeach()
