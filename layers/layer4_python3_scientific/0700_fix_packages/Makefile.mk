include ../../../adm/root.mk
include $(MFEXT_HOME)/share/simple_layer.mk

all:: $(PREFIX)/share/magics

$(PREFIX)/share/magics:
	cd $(PREFIX)/share && ln -s ../../scientific/share/magics magics

