# \file      CMakeList.txt
# \brief     Configuration file at common level
# \details   Project called by root CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      07/04/2015
# \HowTo     To add a common lib, just add add_subdirectory and the name of the directoy when CMakeList.txt for this ressource is located.   

# Call each subdirectory
add_subdirectory(unittest++)
# add_subdirectory(common_tool_directory)

# Propagate to Root CMakeLists.txt (parent)
set(includes_dir_common_var "${includes_dir_common_var}" PARENT_SCOPE)
set(lib_files_common_var "${lib_files_common_var}" PARENT_SCOPE)
set(lib_dir_common_var "${lib_dir_common_var}" PARENT_SCOPE)
