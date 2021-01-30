# Install script for directory: /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/range-v3

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/range-v3/range-v3-config.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/range-v3/range-v3-config.cmake"
         "/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/range-v3/CMakeFiles/Export/lib/cmake/range-v3/range-v3-config.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/range-v3/range-v3-config-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/range-v3/range-v3-config.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/range-v3" TYPE FILE FILES "/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/range-v3/CMakeFiles/Export/lib/cmake/range-v3/range-v3-config.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/range-v3" TYPE FILE FILES "/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/range-v3/range-v3-config-version.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/range-v3/include/" FILES_MATCHING REGEX "/[^/]*$")
endif()
