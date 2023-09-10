set(HEADER_FILES 
    ${CMAKE_CURRENT_SOURCE_DIR}/include/glad/glad.h 
    ${CMAKE_CURRENT_SOURCE_DIR}/include/KHR/khrplatform.h
)

set(SOURCES_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/glad.c 
    ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp    
)

message("HEADER_FILES : "${HEADER_FILES})
message("SOURCES_FILES : "${SOURCES_FILES})

add_executable(QMEngine ${SOURCES_FILES} ${HEADER_FILES})

target_link_libraries(QMEngine PUBLIC TinyLib nlohmann_json)

target_include_directories(QMEngine 
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include)
