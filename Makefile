#
# This file should not be changed.	If you need to make alterations to the configuration, you really ought to edit config.mk instead.
#

all: configure libs

include config.mk
include nrmf.mk

ALL_CLEAN           :=
ALL_CONFIG          :=
ALL_LIBS            :=
ALL_INSTALLS        :=

CONFIG_H_TARGET     := lib65816x/config.h
$(call subdir,config)

$(call subdir,lib65816x)
$(call subdir,src)

.c.o:
	$(CC) $(CCFLAGS) -o $@ $<

configure: $(ALL_CONFIG)

libs: $(ALL_LIBS)

clean: $(ALL_CLEAN)

install: $(ALL_INSTALLS)

