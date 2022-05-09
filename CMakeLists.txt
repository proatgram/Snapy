# Includes
include(CPack)
include(GNUInstallDirs)
## Sets the project variables ##
cmake_minimum_required(VERSION 3.16)
EXECUTE_PROCESS (COMMAND uname -m COMMAND tr -d '\n' OUTPUT_VARIABLE ARCHITECTURE)

project (snapy VERSION 0.1)
set (CMAKE_BUILD_TYPE Debug)

set (CMAKE_CXX_STANDARD 17)
set (CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_ECLIPSE_VERSION 4.23.0)
# CPack variables
set (CPACK_GENERATOR "TGZ" "DEB" "RPM")
set (CPACK_PACKAGE_NAME ${CMAKE_PROJECT_NAME})
set (CPACK_PACKAGE_VERSION ${CMAKE_PROJECT_VERSION})
set (CPACK_DEBIAN_PACKAGE_ARCHITECTURE ${ARCHITECTURE})
set (CPACK_PACKAGE_CONTACT "tgh6407@gmail.com")
set (CPACK_DEBIAN_PACKAGE_MAINTAINER "Timothy Hutchins")
set (CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/COPYING")
set (CPACK_RESOURCE_FILE_README "${CMAKE_CURRENT_SOURCE_DIR}/README.md")
set (CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set (CPACK_PACKAGE_NAME ${PROJECT_NAME})
set (CPACK_PACKAGE_INSTALL_DIRECTORY ${CPACK_PACKAGE_NAME})
set (CPACK_SOURCE_IGNORE_FILES "build/;/build/;//.git;.git;deps/;")

# Sets dependancy git repository information
set (YAML_CPP_REPO "https://github.com/jbeder/yaml-cpp.git")

# Finds needed libraries
find_library (YAML_CPP_LIB NAMES yaml-cpp yaml-cpp.so libyaml-cpp libyaml-cpp.so PATHS "/usr/local/lib")

message(STATUS ${YAML_CPP_LIB})
## Configures dependancies ##
if (${YAML_CPP_LIB} STREQUAL "YAML_CPP_LIB-NOTFOUND")
	message (WARNING "Required library yaml-cpp not found.")
	message (STATUS "Cloning into ${YAML_CPP_REPO}...")
	while(NOT EXISTS ${CMAKE_SOURCE_DIR}/deps/yaml-cpp/CMakeLists.txt)
		execute_process(COMMAND git clone ${YAML_CPP_REPO} WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}/deps" OUTPUT_VARIABLE STDOUT ERROR_VARIABLE STDERR)
	endwhile()
	message (STATUS "Finished cloning into ${YAML_CPP_REPO}. Adding dependancy to project.")
	add_subdirectory (deps/yaml-cpp)
	message (STATUS "Dependancy added!")
	## Adds options for yaml-cpp library ##
	set (YAML_BUILD_SHARED_LIBS ON CACHE BOOL "Installed yaml-cpp library")
	set(YAML_CPP_INSTALL ON CACHE BOOL "Sets the install for yaml-cpp library on")
else()
	message(STATUS "libyaml-cpp found!")
endif()

## Configures targets ##
file (GLOB_RECURSE SOURCES "${CMAKE_SOURCE_DIR}/src/*.cpp" "${CMAKE_SOURCE_DIR}/src/*.c")
file (GLOB_RECURSE HEADERS "${CMAKE_SOURCE_DIR}/include/*.h" "${CMAKE_SOURCE_DIR}/include/*.hpp" "${CMAKE_SOURCE_DIR}/include/*.inl")

add_executable (snapy ${SOURCES} ${HEADERS})
target_include_directories(snapy PUBLIC ${CMAKE_SOURCE_DIR}/include)
target_link_libraries (snapy yaml-cpp)
target_compile_options(snapy PUBLIC "-std=c++17" "-g")

## Adds installation instructions ##
install (TARGETS snapy RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR} COMPONENT applications)
