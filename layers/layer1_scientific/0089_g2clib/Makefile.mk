include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=g2clib
export VERSION=2.1.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=bf11e8ff0472afd8eb04188368d9911b
export EXPLICIT_NAME=NCEPLIBS-g2c-$(VERSION)
DESCRIPTION=\
G2CLIB contains "C" decoder/encoder routines for GRIB edition 2
WEBSITE=https://github.com/NOAA-EMC/NCEPLIBS-g2c
LICENSE=LGPL 3.0

all::$(PREFIX)/lib/libg2c.so
$(PREFIX)/lib/libg2c.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME=$(EXPLICIT_NAME) OPTIONS="-DJASPER_LIBRARY_RELEASE=$(PREFIX)/../core/lib/libjasper.so -DJASPER_INCLUDE_DIR=$(PREFIX)/../core/include" download uncompress configure_cmake3 build_cmake install_cmake
