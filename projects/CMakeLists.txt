# \file      CMakeList.txt
# \brief     Configuration file at components level
# \details   Project called by root CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      07/04/2015
# \HowTo     to add a new project, append these two line at the end of the file (replace project_name_chosen) by the name of the component) :
#               set(PROJECT_NAME "project_name_chosen")
#               add_subdirectory(${PROJECT_NAME})

#set(PROJECT_NAME "project1")  # Set the name for the project
#add_subdirectory(${PROJECT_NAME})  # Call CMakeList.txt in the project name directory

set(PROJECT_NAME "project1")  # Set the name for the project
add_subdirectory(${PROJECT_NAME})  # Call CMakeList.txt in the project name directory

set(PROJECT_NAME "algo")  # Set the name for the project
add_subdirectory(${PROJECT_NAME})  # Call CMakeList.txt in the project name directory

set(PROJECT_NAME "project2")  # Set the name for the project
add_subdirectory(${PROJECT_NAME})  # Call CMakeList.txt in the project name directory

set(PROJECT_NAME "project3")  # Set the name for the project
add_subdirectory(${PROJECT_NAME})  # Call CMakeList.txt in the project name directory
