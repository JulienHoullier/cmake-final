# \file      CMakeList.txt
# \brief     Configuration file at tool level
# \details   Project called by common CmakeList.txt.
# \author    Dr. Mohammed REZGUI
# \version   1.0
# \date      07/04/2015
# \HowTo     Append and propagate properly to parent scope each of the 3 common variables

# Add include directories in ${includes_dir_common_var} at parent scope level
file(GLOB includes_dir_file include)  # Create a temporary file with all directories concerned
list(APPEND includes_dir_common_var ${includes_dir_file})  # Append temporary file content in ${includes_dir_common_var} in local scope
set(includes_dir_common_var "${includes_dir_common_var}" PARENT_SCOPE) # Propagate ${includes_dir_common_var} to parent scope

# Add lib files in ${lib_files_common_var} at parent scope level
file(GLOB lib_files_file lib/*)  # create a temporary file with all files concerned
list(APPEND lib_files_common_var ${lib_files_file})  # Append temporary file content in ${lib_files_common_var} in local scope
set(lib_files_common_var "${lib_files_common_var}" PARENT_SCOPE)  # Propagate ${lib_files_common_var} to parent scope

# Add lib directories in ${lib_dir_common_var} at parent scope level
file(GLOB lib_dir_file lib)  # create a temporary file with all directories concerned
list(APPEND lib_dir_common_var ${lib_dir_file})  # Append temporary file content in ${lib_dir_common_var} in local scope
set(lib_dir_common_var "${lib_dir_common_var}" PARENT_SCOPE)  # Propagate ${lib_dir_common_var} to parent scope