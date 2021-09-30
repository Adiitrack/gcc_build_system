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
# Make file to perform program build.
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      1. <file_name>.i   : Pre-processed files
#      2. <file_name>.asm : Compiled files
#      3. <file_name>.o   : Assembled files
#      4. <file_name>.dep : Dependency files
#      5. c1m2.asm : Compiles all source files and links to output executable,
#                       and creates the assembly instructions of the output
#                       using objdump binary utility.
#      6. compile-all : Compiles all source files, but does not link.
#      7. build    : Compiles all source files and links to output executable.
#      8. clean    : Deletes all output files (.i,.asm,.o,.dep,.out,.map)
# 
#
# Platform Overrides:
#      1. HOST   : Uses native compiler gcc to build files to be run on the 
#                  host machine. "HOST" will be used as the default option.
#      2. MSP432 : Uses cross compiler arm-none-eabi-gcc to build files to be
#                  run on MSP432 Platform.
#
# Note : Use the platform overrides even for "clean" target to delete all 
#        output files.
#
# Author : Aditya Gaurav
# Date   : 07 Oct 2021
#
#------------------------------------------------------------------------------

# Include the sources and include paths file.
include sources.mk

# Platform Overrides.
PLATFORM = HOST

# Target files
TARGET = c1m2

# Architectures Specific Flags.
LINKER_FILE = ../msp432p401r.lds
CPU   = cortex-m4
ARCH  = armv7e-m
SPECS = nosys.specs
FPU   = fpv4-sp-d16
FLOAT = hard

ARSPFLAGS = -mcpu=$(CPU)         \
		    -mthumb              \
			-march=$(ARCH)       \
			-mfloat-abi=$(FLOAT) \
			-mfpu=$(FPU)         \
			--specs=$(SPECS)

# Common Flags.
CSTD = c99

COMFLAGS = -Wall       \
		   -Werror     \
		   -g          \
		   -O0         \
		   -std=$(CSTD)

# Deciding the compiler and flags based on the platform.
# Platform is MSP432.
ifeq ($(PLATFORM),MSP432)
	CC     = arm-none-eabi-gcc
	LD     = arm-none-eabi-ld
	SIZE   = arm-none-eabi-size
	ASMDMP = arm-none-eabi-objdump
	SOURCES  := $(SOURCES_COM) \
			    $(SOURCES_PLAT)
	INCLUDES := $(INCLUDES_COM)  \
			    $(INCLUDES_ARCH) \
			    $(INCLUDES_PLAT)
	CFLAGS    = $(COMFLAGS) \
			    $(ARSPFLAGS)
	CPPFLAGS  = -DMSP432 $(INCLUDES)
	LDFLAGS   = -Wl,-Map=$(TARGET).map \
			    -Wl,-T $(LINKER_FILE)
endif	

# Platform is HOST Machine.
ifeq ($(PLATFORM),HOST)
	CC     = gcc
	LD     = ld
	SIZE   = size
	ASMDMP = objdump
	SOURCES  := $(SOURCES_COM)
	INCLUDES := $(INCLUDES_COM)
	CFLAGS    = $(COMFLAGS)
	CPPFLAGS  = -DHOST $(INCLUDES)
	LDFLAGS   = -Wl,-Map=$(TARGET).map
endif

# Pre-processed(.i), compiled(.asm) and assembled(.o) files.
PREPROCS := $(SOURCES:.c=.i)
ASSMS    := $(SOURCES:.c=.asm)
OBJECTS  := $(SOURCES:.c=.o)
DEPNDS   := $(SOURCES:.c=.dep)

# Make rules
# Pre-processed output
%.i : %.c
	$(CC) $(CPPFLAGS) -E $^ -o $@

# Compiled output
%.asm : %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -S $^ -o $@

# Assembly dump of final output executable.
$(TARGET).asm : $(OBJECTS)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) $(OBJECTS) -o $(TARGET).out
	$(ASMDMP) --disassemble $(TARGET).out > $(TARGET).asm
	cat $(TARGET).asm

# Assembled output
%.o : %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $^ -o $@

# Dependency files
%.dep : %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -MM $^ -o $@
	
# Compile-all
.PHONY: compile-all
compile-all : $(OBJECTS)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $^
	
# Build
# Here, all pre-requisite option "$^" is not used like in other build targets,
# because dependency files are not required for build purpose.
# However, they are being created along with complete build.
# Hence, only $(OBJECTS) files are used as input files for build.
.PHONY: build
build : $(TARGET).out
$(TARGET).out : $(OBJECTS) $(DEPNDS)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) $(OBJECTS) -o $@
	$(SIZE) -Btd $(TARGET).out $(OBJECTS)
	$(SIZE) -Ad $(TARGET).out
	$(ASMDMP) --disassemble $(TARGET).out > $(TARGET).asm

# Clean. Provide platform for clean as well.
.PHONY: clean
clean :
	rm -f $(OBJECTS) $(PREPROCS) $(ASSMS) $(DEPNDS) $(TARGET).out $(TARGET).map $(TARGET).asm

#------------------------------------ End of file Makefile ------------------------------------
