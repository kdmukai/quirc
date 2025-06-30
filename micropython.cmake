# # Create an INTERFACE library for our C module.
add_library(quirc INTERFACE)

# # Add our source files to the lib
 target_sources(quirc INTERFACE
     ${CMAKE_CURRENT_LIST_DIR}/lib/decode.c
     ${CMAKE_CURRENT_LIST_DIR}/lib/identify.c
     ${CMAKE_CURRENT_LIST_DIR}/lib/quirc.c
     ${CMAKE_CURRENT_LIST_DIR}/lib/version_db.c
     ${CMAKE_CURRENT_LIST_DIR}/quirc_bindings.c
 )

# # Add the current directory as an include directory.
target_include_directories(quirc INTERFACE
     ${CMAKE_CURRENT_LIST_DIR}
)

target_compile_definitions(quirc INTERFACE)

# # Be sure to set the -O2 "optimize" flag!!
 target_compile_options(quirc INTERFACE
     -Wno-unused-variable
     -Wno-sign-compare
     -O2

     # force quirc to use single precision floating point math
     -DQUIRC_FLOAT_TYPE=float
     -DQUIRC_USE_TGMATH
 )

# # Link our INTERFACE library to the usermod target.
target_link_libraries(usermod INTERFACE quirc)

