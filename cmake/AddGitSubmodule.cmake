function(add_git_submodule dir)
    message("CMAKE_SOURCE_DIR:"${CMAKE_SOURCE_DIR})
    message("PROJECT_SOURCE_DIR:"${PROJECT_SOURCE_DIR})

    find_package(Git REQUIRED)
    message("GIT EXE : "${GIT_EXECUTABLE})

    if(NOT EXISTS ${CMAKE_SOURCE_DIR}/${dir}/CMakeLists.txt)
        message("git adding submodule to":${dir})
        execute_process(COMMAND ${GIT_EXECUTABLE} 
        submodule update --init --recursive --${CMAKE_SOURCE_DIR}/${dir}
        WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
    endif()
    
    if (EXISTS ${CMAKE_SOURCE_DIR}/${dir}/CMakeLists.txt)
        message("Adding: ${dir}/CMakeLists.txt")
        add_subdirectory(${CMAKE_SOURCE_DIR}/${dir})
    else()
        message("Could not add: ${dir}/CMakeLists.txt")
    endif()
endfunction(add_git_submodule)
