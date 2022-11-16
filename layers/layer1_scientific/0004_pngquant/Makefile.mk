include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=pngquant
export VERSION=2.17.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=e18dd9cc2114c28f85b04b376512c267
DESCRIPTION=\
PNGQUANT is a command-line utility and a library for lossy compression of PNG images
WEBSITE=http://www.pngquant.org/
LICENSE=GPL v3 or later with additional copyright notices for older parts of the code

all:: $(PREFIX)/bin/pngquant
$(PREFIX)/bin/pngquant:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure build install
