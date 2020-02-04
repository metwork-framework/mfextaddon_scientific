include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=netcdf-fortran
export VERSION=4.5.2
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=864c6a5548b6f1e00579caf3cbbe98cc
DESCRIPTION=\
NETCDF_FORTRAN is the FORTRAN API of NETCDF4
WEBSITE=http://www.unidata.ucar.edu/software/netcdf/
LICENSE=MIT

all:: $(PREFIX)/lib/libnetcdff.so
$(PREFIX)/lib/libnetcdff.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRALDFLAGS="-L$(PREFIX)/../scientific_core/lib" EXTRACFLAGS="-I$(PREFIX)/../scientific_core/include" download uncompress configure build install
