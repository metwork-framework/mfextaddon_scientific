include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=pngquant
export VERSION=2.12.5
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=e2a02de064d6887d563fa12ceb1eb775
DESCRIPTION=\
PNGQUANT is a command-line utility and a library for lossy compression of PNG images
WEBSITE=http://www.pngquant.org/
LICENSE=GPL v3 or later with additional copyright notices for older parts of the code

all:: $(PREFIX)/bin/pngquant
$(PREFIX)/bin/pngquant:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure build install
