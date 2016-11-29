cmake_minimum_required(VERSION 3.6)
project(Sterntaler)

set(SOURCE_FILES
        Sources/Driver.swift
        Sources/Column.swift
        Sources/DbConvertible.swift
        Package.swift)

set(SWIFT_COMMAND
        swift build)

add_custom_target(Sterntaler
        COMMAND ${SWIFT_COMMAND}
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        SOURCES ${SOURCE_FILES})