include ../../../adm/root.mk
include $(MFEXT_HOME)/share/simple_layer.mk

ifeq ($(shell cat /etc/redhat-release | grep -c "release 8"), 1)

LIB_LIST = $(shell cat libraries.txt)
$(shell mkdir $(PREFIX)/lib)

all:: $(PREFIX)/lib/liblttng-ust.so.0
$(PREFIX)/lib/liblttng-ust.so.0:
	for lib in $(LIB_LIST); do cp -r $$lib $(PREFIX)/lib; done
endif
