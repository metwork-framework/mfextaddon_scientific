include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=pngquant
export VERSION=2.18.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=c722e71c3fc4aac6c378e35df2cfdd93
DESCRIPTION=\
PNGQUANT is a command-line utility and a library for lossy compression of PNG images
WEBSITE=http://www.pngquant.org/
LICENSE=GPL v3 or later with additional copyright notices for older parts of the code

#Releases >= 3 are built with rust/cargo. Upgrade ?
#See https://crates.io/crates/pngquant/3.0.1

all:: $(PREFIX)/bin/pngquant
$(PREFIX)/bin/pngquant:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure build install
