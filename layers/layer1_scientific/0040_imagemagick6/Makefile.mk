include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=ImageMagick6
export VERSION=6.9.13-52
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=b6e974779faf599ae58cfb5729f9d6ae
export ARCHIV=$(VERSION).$(EXTENSION)
DESCRIPTION=\
IMAGEMAGICK is a software suite to create, edit, compose, or convert images.
WEBSITE=http://www.imagemagick.org
LICENSE=Apache 2.0

# Upgrade to ImageMagick 7 ?
all:: $(PREFIX)/bin/convert
$(PREFIX)/bin/convert:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) ARCHIV=$(ARCHIV) EXTRALDFLAGS="-L$(PREFIX)/../core/lib" EXTRACFLAGS="-I$(PREFIX)/../core/include" OPTIONS="--disable-static --with-rsvg" download uncompress configure build install
