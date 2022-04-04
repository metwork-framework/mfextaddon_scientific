include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=g2clib
export VERSION=1.6.0
export EXTENSION=tar.bz2
export CHECKTYPE=MD5
export CHECKSUM=89a6df22cf1362d284d04873c5d0b8ce
DESCRIPTION=\
G2CLIB contains "C" decoder/encoder routines for GRIB edition 2
WEBSITE=https://www.ncl.ucar.edu/
LICENSE=Apache 2.0

all::$(PREFIX)/lib/libgrib2c.a
$(PREFIX)/lib/libgrib2c.a:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress build
	cd build/$(NAME)-$(VERSION) && cp libg2c_v1.6.0.a $(PREFIX)/lib/libgrib2c.a && cp *.h $(PREFIX)/include
