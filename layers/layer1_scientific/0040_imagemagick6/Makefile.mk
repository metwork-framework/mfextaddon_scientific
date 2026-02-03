include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=ImageMagick6
export VERSION=6.9.13-38
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=2187e8446ec3b70cf02e3a40007f7c5a
export ARCHIV=$(VERSION).$(EXTENSION)
DESCRIPTION=\
IMAGEMAGICK is a software suite to create, edit, compose, or convert images.
WEBSITE=http://www.imagemagick.org
LICENSE=Apache 2.0

# Upgrade to ImageMagick 7 ?
all:: $(PREFIX)/bin/convert
$(PREFIX)/bin/convert:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) ARCHIV=$(ARCHIV) EXTRALDFLAGS="-L$(PREFIX)/../core/lib" EXTRACFLAGS="-I$(PREFIX)/../core/include" OPTIONS="--disable-static --with-rsvg" download uncompress configure build install
