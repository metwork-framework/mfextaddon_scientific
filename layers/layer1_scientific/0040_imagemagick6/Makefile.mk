include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=ImageMagick6
export VERSION=6.9.12-93
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=b0ac80348e18c5ecb188ae5e8c17f2a9
export ARCHIV=$(VERSION).$(EXTENSION)
DESCRIPTION=\
IMAGEMAGICK is a software suite to create, edit, compose, or convert images.
WEBSITE=http://www.imagemagick.org
LICENSE=Apache 2.0

# Upgrade to ImageMagick 7 ?
all:: $(PREFIX)/bin/convert
$(PREFIX)/bin/convert:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) ARCHIV=$(ARCHIV) EXTRALDFLAGS="-L$(PREFIX)/../scientific_core/lib" EXTRACFLAGS="-I$(PREFIX)/../scientific_core/include" OPTIONS="--disable-static  --with-rsvg" download uncompress configure build install
