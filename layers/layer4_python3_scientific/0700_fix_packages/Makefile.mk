include ../../../adm/root.mk
include $(MFEXT_HOME)/share/simple_layer.mk

all:: $(PREFIX)/share/magics

$(PREFIX)/share/magics:
	cd $(PREFIX)/share && ln -s ../lib/python3.10/site-packages/ecmwflibs/share/magics magics

