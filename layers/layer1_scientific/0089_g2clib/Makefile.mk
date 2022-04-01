include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=g2clib
export VERSION=1.6.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=11c1244e03f6278180b399e27f86468e
DESCRIPTION=\
G2CLIB contains "C" decoder/encoder routines for GRIB edition 2
WEBSITE=https://www.ncl.ucar.edu/
LICENSE=Apache 2.0
EXPLICIT_NAME=$(NAME)-$(VERSION)-patch

all::$(PREFIX)/lib/libgrib2c.a
$(PREFIX)/lib/libgrib2c.a:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" download uncompress build
	cd build/$(EXPLICIT_NAME) && cp libgrib2c.a $(PREFIX)/lib && cp *.h $(PREFIX)/include
