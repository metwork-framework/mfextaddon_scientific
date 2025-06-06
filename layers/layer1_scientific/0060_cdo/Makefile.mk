include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=cdo
export VERSION=2.5.1
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=c761131cb7142abc7f88f807bb4e3653
DESCRIPTION=\
CDO is a collection of command line Operators to manipulate and analyse Climate and NWP model Data.\
Supported data formats are GRIB 1/2, netCDF 3/4, SERVICE, EXTRA and IEG. There are more than 600 \
operators available.
WEBSITE=https://code.mpimet.mpg.de/projects/cdo/
LICENSE=GNU General Public License

all:: $(PREFIX)/bin/cdo
$(PREFIX)/bin/cdo:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRALDFLAGS="-L$(PREFIX)/../scientific_core/lib" EXTRACFLAGS="-I$(PREFIX)/../scientific_core/include" OPTIONS="--with-eccodes=$(PREFIX) --with-magics=$(PREFIX) --with-netcdf=$(PREFIX)/../scientific_core --with-hdf5=$(PREFIX)/../scientific_core --with-proj=$(PREFIX)/../scientific_core --with-curl=$(PREFIX)/../core --with-libxml2=yes --with-szlib=yes --with-udunits2=$(PREFIX) --enable-cdi-lib  --enable-static=no" download uncompress configure build install
