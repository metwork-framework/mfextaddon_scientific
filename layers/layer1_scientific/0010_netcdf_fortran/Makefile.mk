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

#We build netcdf-fortran with gcc/gfortran >= 4.5
#for fortran compatibily when building esmf
GFORTRAN_VERSION = `gfortran --version | head -1 | cut -d" " -f4 | cut -d"." -f1-2`
DEVTOOLSET = 7

ifeq ($(shell expr $(GFORTRAN_VERSION) \< "4.5" ), 1)

all:: $(PREFIX)/lib/libnetcdff.so
$(PREFIX)/lib/libnetcdff.so:
	scl enable devtoolset-$(DEVTOOLSET) '$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRALDFLAGS="-L$(PREFIX)/../scientific_core/lib" EXTRACFLAGS="-I$(PREFIX)/../scientific_core/include" download uncompress configure build install'

else

all:: $(PREFIX)/lib/libnetcdff.so
$(PREFIX)/lib/libnetcdff.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRALDFLAGS="-L$(PREFIX)/../scientific_core/lib" EXTRACFLAGS="-I$(PREFIX)/../scientific_core/include" download uncompress configure build install

endif
