include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=pango
export VERSION=1.42.4
export EXTENSION=tar.xz
export CHECKTYPE=MD5
export CHECKSUM=deb171a31a3ad76342d5195a1b5bbc7c
DESCRIPTION=\
Pango is a library for laying out and rendering of text, with an emphasis on\
internationalization. Pango can be used anywhere that text layout is needed,\
though most of the work on Pango so far has been done in the context of the \
GTK+ widget toolkit.\
The integration of Pango with Cairo provides a complete solution with high \
quality text handling and graphics rendering. 
WEBSITE=https://pango.gnome.org/
LICENSE=LGPL2

#For some reason the build looks for python3 (for build usage only) in the
#wrong place (under glib home).
#So we temporarily copy a python3 wrapper in this place
all::$(PREFIX)/lib/libpango-1.0.so
$(PREFIX)/lib/libpango-1.0.so:
	mkdir -p $(PREFIX)/../core/opt/python3_core/bin/
	cp $(PREFIX)/../python2_core/bin/python3_wrapper $(PREFIX)/../core/opt/python3_core/bin/python3
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="--with-xft" download uncompress configure build install
	rm -r $(PREFIX)/../core/opt/
	#cd build/$(NAME)-$(VERSION) && meson --prefix=$(PREFIX) .. && ninja && ninja install
	
