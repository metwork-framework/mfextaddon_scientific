include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=ImageMagick6
export VERSION=6.9.10-86
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=81d751565d6d05501d1dd5a8ce00b117
export ARCHIV=$(VERSION).$(EXTENSION)
DESCRIPTION=\
IMAGEMAGICK is a software suite to create, edit, compose, or convert images.
WEBSITE=http://www.imagemagick.org
LICENSE=Apache 2.0

all:: $(PREFIX)/bin/convert
$(PREFIX)/bin/convert:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) ARCHIV=$(ARCHIV) OPTIONS="--disable-static" download uncompress configure build install
