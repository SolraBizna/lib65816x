CC      := gcc
CCFLAGS := -c -O2 -fomit-frame-pointer $(CCOPTS)
LD      := gcc
LDFLAGS :=

PREFIX  := /usr/local
LIBPATH := $(PREFIX)/lib
INCPATH := $(PREFIX)/include

DELETE  := rm -rf

