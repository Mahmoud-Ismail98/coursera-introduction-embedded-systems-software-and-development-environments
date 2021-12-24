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
#      # Build Targets:
#      <FILE>.o - Builds a <FILE>.o object file
#      <FILE>.i - Builds a <FILE>.i preprocessed file
#      <FILE>.asm - Dumps <FILE>.asm assembly file
#      <FILE>.d - Builds <FILE>.d dependency file
#      compile-all - Compiles all source files in project
#      build - Builds all object files in project (links as well)
#      clean - Removes all generated files
#---------------------------------------------------------------------------------
# Platform Overrides:
#      This makefile supports 2 platforms: the host linux machine, and the MSP432 microcontroller.
#      For the MSP432 we define its specific linker file (msp432p401r.lds)
#		, the CPU, architecture which are different from the case of "host" platform
#------------------------------------------------------------------------------

include sources.mk

# Platform Overrides
#PLATFORM = MSP432
ifeq ($(PLATFORM),MSP432)
    CC = arm-none-eabi-gcc
    LD = arm-none-eabi-ld
    LINKER_FILE = ../msp432p401r.lds
    LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE)
    # Architectures Specific Flags ARM
    CPU = cortex-m4
    ARCH = thumb
    SPECS = nosys.specs
    FPU = fpv4-sp-d16
    ARMFLAGS = -mcpu=$(CPU) -m$(ARCH) --specs=$(SPECS) -march=armv7e-m -mfloat-abi=hard -mfpu=$(FPU)		
    OBJDUMP = arm-none-eabi-objdump

    #Size Utility
    SIZE = arm-none-eabi-size 
else
    CC = gcc
    LD = ld
    #Size Utility
    SIZE = size
    LDFLAGS = -Wl,-Map=$(TARGET).map
    OBJDUMP = objdump
endif


# Compiler Flags and Defines 
TARGET = c1m2

CFLAGS = -Wall -Werror -g -O0 -std=c99 -D$(PLATFORM) $(ARMFLAGS)
CPPFLAGS = -E
MAIN = main

OBJS = $(SOURCES:.c=.o)
PREPRO = $(SOURCES:.c=.i)
ASMS = $(SOURCES:.c=.asm)
DEPS = $(SOURCES:.c=.d)

# General flags for both platforms
	### -Wall: This enables all the warnings about constructions that some users consider questionable, and that are easy to avoid (or modify to prevent the warning), even in conjunction with macros.
	### -Werror: Make all warnings into errors. 
	### -O0: Reduce compilation time and make debugging produce the expected results. This is the default. 


FILES = *.asm *.i *.o *.d
	
%.o : %.c
	$(CC) $(INCLUDES) -c $< $(CFLAGS) -o $@

%.i : %.c
	$(CC) $(INCLUDES) $(CPPFLAGS) $< $(CFLAGS) -o $@

%.asm : %.c
	$(CC) $(INCLUDES) -S $< $(CFLAGS) -o $@


# Generate assembly output of c-program implementation files and the final output executable (Use the –S flag and the objdump utility).
$(TARGET).asm : $(TARGET).out
	$(OBJDUMP) -d $(TARGET).out >> $@


# Generate Dependancy files for each Source File
%.d: %.c
	$(CC) $(INCLUDES) -M $< $(CFLAGS) -o $@


.PHONY: compile-all
compile-all: $(OBJS)
	$(CC) $(INCLUDES) $(OBJS) -c $(CFLAGS) -o $(TARGET).o

.PHONY: build
# Compile all object files and link into a final executable.
build: $(TARGET).out $(TARGET).asm

$(TARGET).out: $(OBJS) $(DEPS)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -o $@
	$(SIZE) -Atd $(TARGET).out
	$(SIZE) $(TARGET).out
	
.PHONY:clean
 clean:
	clean:
	rm -f $(TARGET).asm $(FILES) $(TARGET).out $(TARGET).map $(PREPRO) $(ASMS) $(DEPS) $(OBJS)

	# This should remove all compiled objects, preprocessed outputs, assembly outputs, executable files and build output files.
	#rm -f $(OBJS) main.out $(ASMS) $(PPS) $(MAPS
	#rm -f *.out *.map *.o *.asm *.i *.d
