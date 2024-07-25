# Define variable CC to be the compiler used in this project
CC = gcc

# Define CFLAGS for the flags used along with the compiler
CFLAGS = -g -Wall

# Define TARGETS to be the targets to be run when calling 'make all'
TARGETS = clean token-shell

# Define SRCS to be the source files needed to compile 'token-shell'
SRCS = tokenizer.h tokenizer.c token-shell.c

# Define PHONY targets to prevent make from confusing the phony target with the same file names
.PHONY: clean all

# If no arguments are passed to make, it will attempt the 'token-shell' target
default: token-shell

# This runs the 'clean' and 'token-shell' targets when 'make all' is run
all: $(TARGETS)

# List of targets
# $^ = names of all the prerequisites, with spaces between them
# $@ = complete name of the target
token-shell: $(SRCS)
	$(CC) $(CFLAGS) $^ -o $@

# $(RM) is the platform agnostic way to delete a file (here rm -f)
clean:
	$(RM) token-shell
