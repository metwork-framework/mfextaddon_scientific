include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=netcdf-fortran
export VERSION=4.6.1
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=a34fa637abc362776b5165c6e5da324d
DESCRIPTION=\
NETCDF_FORTRAN is the FORTRAN API of NETCDF4
WEBSITE=http://www.unidata.ucar.edu/software/netcdf/
LICENSE=MIT

export HDF5_PLUGIN_PATH=$(PREFIX)/../scientific_core/hdf5/lib/plugin

all:: $(PREFIX)/lib/libnetcdff.so
$(PREFIX)/lib/libnetcdff.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="--enable-zstandard_plugin=yes" EXTRALDFLAGS="-L$(PREFIX)/../scientific_core/lib" EXTRACFLAGS="-I$(PREFIX)/../scientific_core/include" download uncompress configure build install
