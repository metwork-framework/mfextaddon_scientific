include ../../../adm/root.mk
include $(MFEXT_HOME)/share/simple_layer.mk

all:: $(PREFIX)/share/magics

$(PREFIX)/share/magics:
	cd $(PREFIX)/share && ln -s ../lib/python$(PYTHON3_SHORT_VERSION)/site-packages/ecmwflibs/share/magics magics

