project(XercesCCMakeSupport NONE)
if(NOT xercesc_VERSION)
  message(FATAL_ERROR "NO xercesc_VERSION VARIABLE set")
endif()
configure_file(XercesCConfigVersion.cmake.in XercesCConfigVersion.cmake @ONLY)
configure_file(XercesCLibraryDepends-mode.cmake.in XercesCLibraryDepends-Release.cmake @ONLY)

install(FILES
  XercesCConfig.cmake
  XercesCLibraryDepends.cmake
  ${PROJECT_BINARY_DIR}/XercesCConfigVersion.cmake
  ${PROJECT_BINARY_DIR}/XercesCLibraryDepends-Release.cmake
  DESTINATION
   lib/cmake/XercesC-${xercesc_VERSION}
   )

