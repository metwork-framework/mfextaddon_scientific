include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=cdo
export VERSION=1.9.8
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=2a8d8f521b13ff957e9682bae4d4fa9a
DESCRIPTION=\
CDO is a collection of command line Operators to manipulate and analyse Climate and NWP model Data.\
Supported data formats are GRIB 1/2, netCDF 3/4, SERVICE, EXTRA and IEG. There are more than 600 \
operators available.
WEBSITE=https://code.mpimet.mpg.de/projects/cdo/
LICENSE=GNU General Public License

#We need C++11 features to build
GCC_VERSION = `gcc --version | head -1 | cut -d" " -f3 | cut -d"." -f1-2`
DEVTOOLSET = 7

ifeq ($(shell expr $(GCC_VERSION) \< "4.8" ), 1)

all:: $(PREFIX)/bin/cdo
$(PREFIX)/bin/cdo:
	scl enable devtoolset-$(DEVTOOLSET) '$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRALDFLAGS="-L$(PREFIX)/../scientific_core/lib" EXTRACFLAGS="-I$(PREFIX)/../scientific_core/include" OPTIONS="--with-eccodes=$(PREFIX) --with-magics=$(PREFIX) --with-netcdf=$(PREFIX)/../scientific_core --with-hdf5=$(PREFIX)/../scientific_core --with-proj=$(PREFIX)/../scientific_core --with-curl=$(PREFIX)/../core --with-libxml2=$(PREFIX)/../core --with-udunits2=$(PREFIX) --enable-cdi-lib  --enable-static=no" download uncompress configure build install'

else

all:: $(PREFIX)/bin/cdo
$(PREFIX)/bin/cdo:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRALDFLAGS="-L$(PREFIX)/../scientific_core/lib" EXTRACFLAGS="-I$(PREFIX)/../scientific_core/include" OPTIONS="--with-eccodes=$(PREFIX) --with-magics=$(PREFIX) --with-netcdf=$(PREFIX)/../scientific_core --with-hdf5=$(PREFIX)/../scientific_core --with-proj=$(PREFIX)/../scientific_core --with-curl=$(PREFIX)/../core --with-libxml2=$(PREFIX)/../core --with-udunits2=$(PREFIX) --enable-cdi-lib  --enable-static=no" download uncompress configure build install

endif
