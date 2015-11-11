# - XercesC CMake Configuration File for External Projects
#

#-----------------------------------------------------------------------
# Locate ourselves, since we can locate all other files relative to
# where we are.
#
get_filename_component(__cfl_xercesc_config_dir "${CMAKE_CURRENT_LIST_FILE}" PATH)

#-----------------------------------------------------------------------
# Set the header path
#
get_filename_component(XERCESC_INCLUDE_DIR "${__cfl_xercesc_config_dir}/../../../include" ABSOLUTE CACHE)
set(XERCESC_INCLUDE_DIRS "${XERCESC_INCLUDE_DIR}")

#-----------------------------------------------------------------------
# Load library depends file and set compatibility variables
#
if(NOT XERCESC_LIBDEPS_LOADED)
  include("${__cfl_xercesc_config_dir}/XercesCLibraryDepends.cmake")
  set(XERCESC_LIBDEPS_LOADED 1)
endif()

# - Dynamic libs only for now...
set(XERCESC_LIBRARY xerces-c CACHE FILEPATH "Path to the xerces-c library (imported)")
set(XERCESC_LIBRARIES ${XERCESC_LIBRARY})

