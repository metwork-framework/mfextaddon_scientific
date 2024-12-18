include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=nco
export VERSION=5.2.9
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=f4b1f97735e5713c036cd4a3fb8f9217
DESCRIPTION=\
The netCDF Operators, NCO, are a suite of programs known as operators. \
The operators facilitate manipulation and analysis of self-describing\
data stored in the freely available netCDF and HDF formats
WEBSITE=http://nco.sourceforge.net
LICENSE=GNU General Public License

all:: $(PREFIX)/lib/libnco.so
$(PREFIX)/lib/libnco.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRALDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/../scientific_core/lib" EXTRACFLAGS="-I$(PREFIX)/include -I$(PREFIX)/../scientific_core/include" OPTIONS="--enable-static=no --enable-nco_cplusplus=yes" download uncompress configure build install
