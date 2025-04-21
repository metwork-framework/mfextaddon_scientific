include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=pngquant
export VERSION=3.0.3
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=0c92f3f5c5ffb31ca490d7197aff94a0
export VERSION_LIBIMAGEQUANT=4.3.4
DESCRIPTION=\
PNGQUANT is a command-line utility and a library for lossy compression of PNG images
WEBSITE=http://www.pngquant.org/
LICENSE=GPL v3 or later with additional copyright notices for older parts of the code

all:: $(PREFIX)/bin/pngquant
$(PREFIX)/bin/pngquant:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress
	cd build/$(NAME)-$(VERSION) && rm -rf lib && ln -s ../../../0003_libimagequant/build/libimagequant-$(VERSION_LIBIMAGEQUANT) lib
	cd build/$(NAME)-$(VERSION) && cargo build --release && cp -f target/release/pngquant $(PREFIX)/bin/pngquant
