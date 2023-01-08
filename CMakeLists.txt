cmake_minimum_required(VERSION 3.18)
project(docker_breakout C)

set(CMAKE_C_STANDARD 11)

FILE(GLOB exploits exploits/*.c)

execute_process(
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMAND bash -c "tar -czvf payloads.tar.gz ./payloads"
)

execute_process(
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMAND bash -c "xxd -i payloads.tar.gz > embedfile.c"
)

add_custom_command(
    OUTPUT foo.c
    COMMAND embedfile foo foo.rsrc
    DEPENDS foo.rsrc
)

add_executable(docker_breakout main.c ${exploits} embedfile.c)
