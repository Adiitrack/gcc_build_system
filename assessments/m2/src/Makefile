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
# <Put a Description Here>
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      Varitey of build option is there to build , Either going step by step 
#	or use direct build for complete build
#
# Platform Overrides:
#      MSP432 or HOST ; by default HOST Platform is considered. 
#	One must have to override explicitely.
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = HOST

# Architectures Specific Flags
LINKER_FILE = msp432p401r.lds

CPU = cortex-m4
ARCH = armv7e-m
SPECS = nosys.specs

# Compiler Flags and Defines 
cc_for_host = gcc
cc_for_target = arm-none-eabi-gcc


TARGET = c1m2
LD = 
LDFLAGS = -Wl,-Map=$(TARGET).map 
CFLAGS=  -g -O0 -std=c99  -Wall -Werror
 
CPPFLAGs = -E

ifeq ($(PLATFORM),MSP432)
	CC=$(cc_for_target)
	LDFLAGS = -Wl,-Map=$(TARGET).map -T $(shell pwd)/../$(LINKER_FILE) 
	CFLAGS = --specs=nosys.specs -mcpu=cortex-m4 -mthumb -g -O0 -std=c99 -Wall -march=armv7e-m
	SOURCES :=$(SOURCES) $(SOURCESMSP)
	INCLUDES := $(INCLUDES) $(INCLUDESMSP)
else
	CC=$(cc_for_host)
endif



OBJS = $(SOURES:.c=.o)

%.i : %.c
	$(CC) $(CFLAGS) $(CPPFLAGs) $< -o $@ $(INCLUDES) -D $(PLATFORM)

%.asm : %.c
	$(CC) $(CFLAGS) -E  $< -o $@ $(INCLUDES) -D $(PLATFORM) 

%.o : %.c
	$(CC)  -c $<  $(CFLAGS) -o $@ $(INCLUDES) -D $(PLATFORM)

.PHONY: build
build: all

.PHONY: all
all:$(TARGET).out

$(TARGET).out: $(SOURCES)
	$(CC)  -c $(SOURCES)  $(CFLAGS)  $(INCLUDES) -D $(PLATFORM)
	$(CC)  -MM $(SOURCES) $(CFLAGS)  $(INCLUDES) -D $(PLATFORM) 
	$(CC)  $(SOURCES) $(CFLAGS) $(LDFLAGS)  -o $@   $(INCLUDES) -D $(PLATFORM)

.PHONY: compile-all
compile-all:$(SOURCES)
	$(CC)  -c $(SOURCES)  $(CFLAGS)  $(INCLUDES) -D $(PLATFORM)

.PHONY: clean
clean:
	rm -rf  *.o *.map *.out *.i *.asm $(TARGET).out $(TARGET).map *.d

