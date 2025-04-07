include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=ncview
export VERSION=2.1.11
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=946e351ef6f50dab3d0a52092fe131d7
DESCRIPTION=\
Ncview is a visual browser for netCDF format files
WEBSITE=https://cirrus.ucsd.edu/ncview/
LICENSE=LGPL

all::$(PREFIX)/bin/ncview
$(PREFIX)/bin/ncview:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="--with-udunits2_incdir=$(PREFIX)/include --with-udunits2_libdir=$(PREFIX)/lib" download uncompress configure build install
	mkdir -p $(PREFIX)/lib/ncview
	cd build/$(NAME)-$(VERSION) && cp *.ncmap $(PREFIX)/lib/ncview
