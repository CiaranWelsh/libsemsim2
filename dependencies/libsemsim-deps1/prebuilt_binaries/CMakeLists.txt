
# installing libxslt into dependencies/INSTALL
set(LIBXSLT_PREBUILT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libxslt)

install(DIRECTORY ${LIBXSLT_PREBUILT_DIR}/bin       DESTINATION ${CMAKE_INSTALL_PREFIX} )
install(DIRECTORY ${LIBXSLT_PREBUILT_DIR}/include   DESTINATION ${CMAKE_INSTALL_PREFIX} )
install(DIRECTORY ${LIBXSLT_PREBUILT_DIR}/lib       DESTINATION ${CMAKE_INSTALL_PREFIX} )

#install winflexbison if win32. win_flex_bison doesn't seem to conform to the usual install structure
# so just copy whole directory across to CMAKE_INSTALL_PREFIX and use as is
if (${WIN32})
    install(DIRECTORY win_flex_bison    DESTINATION ${CMAKE_INSTALL_PREFIX})
endif ()