include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=g2clib
export VERSION=1.6.3
export EXTENSION=tar.bz2
export CHECKTYPE=MD5
export CHECKSUM=5182a27323481e29d3cd6c2cbcf7add9
DESCRIPTION=\
G2CLIB contains "C" decoder/encoder routines for GRIB edition 2
WEBSITE=https://www.ncl.ucar.edu/
LICENSE=Apache 2.0

#Version 1.7.0 would require to build jasper >= 2.0.25

all::$(PREFIX)/lib/libg2c.a
$(PREFIX)/lib/libg2c.a:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress build
	cd build/$(NAME)-$(VERSION) && cp libg2c_v1.6.3.a $(PREFIX)/lib/libg2c.a && cp *.h $(PREFIX)/include
