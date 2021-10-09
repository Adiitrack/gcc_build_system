#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# List of all source files and include paths used by make for program build.
#
# Author : Aditya Gaurav
# Date : 07 Oct 2021
#
#------------------------------------------------------------------------------

# List of all common source files used for program build.
SOURCES_COM = ./src/main.c   \
              ./src/memory.c \
              ./src/data.c   \
              ./src/course1.c \
              ./src/stats.c

# List of all platform related source files used for program build.
SOURCES_PLAT = ./src/startup_msp432p401r_gcc.c    \
               ./src/system_msp432p401r.c         \
               ./src/interrupts_msp432p401r_gcc.c

# List of all include paths used for program build.

# Common includes.
INCLUDES_COM = -I./include/common

# Architecture specific includes.
INCLUDES_ARCH = -I./include/CMSIS

# Platform specific includes.              
INCLUDES_PLAT = -I./include/msp432 

# Linux commands information:
# "."  : Current directory.
# ".." : One directory up.
# "/"  : Separate out the file_name/folder_name from the rest of the directory contents.
# "\"  : Continued on next line.
# "-I" : Include the directory.
