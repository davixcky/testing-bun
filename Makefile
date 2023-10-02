# Makefile for LAB01

# Define the compiler
CC = gcc

# Define the flags for Flex
FLEX = flex
FLEX_FLAGS = -o LAB01.c

# Define the libraries for Flex
FLEX_LIBS = -lfl

# Define the flags for GCC
CFLAGS = -Wall

# Define the target executable
TARGET = LAB01

# Default target
all: $(TARGET)

# Target to generate the lexer
LAB01.c: LAB01.l
	$(FLEX) $(FLEX_FLAGS) $<

# Target to compile the source code and create the executable
$(TARGET): LAB01.c
	$(CC) $(CFLAGS) $< -o $@ $(FLEX_LIBS)

# Target to clean up generated files
clean:
	rm -f LAB01.c $(TARGET)
