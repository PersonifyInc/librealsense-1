# Set the path to the appropriate realsense dll/lib file
#

get_filename_component(HERE ${CMAKE_CURRENT_LIST_DIR} ABSOLUTE)

include_directories(${HERE}/include)

if (CMAKE_CL_64)
    set (RS_DLL_DIR ${HERE}/lib/win64/$<$<CONFIG:Debug>:Debug>$<$<NOT:$<CONFIG:Debug>>:Release>)
else (CMAKE_CL_32)
    set (RS_DLL_DIR ${HERE}/lib/win32/$<$<CONFIG:Debug>:Debug>$<$<NOT:$<CONFIG:Debug>>:Release>)
endif (CMAKE_CL_64)
