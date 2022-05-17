include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=eccodes
export VERSION=2.25.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=fcc94d39fa13ba6d0564c85b6d78c39f
export EXPLICIT_NAME=$(NAME)-$(VERSION)-Source
DESCRIPTION=\
ecCodes is a package developed by ECMWF which provides an application programming interface and a set of tools for decoding and encoding messages in the following formats: \
    WMO FM-92 GRIB edition 1 and edition 2 \
    WMO FM-94 BUFR edition 3 and edition 4  \
    WMO GTS abbreviated header (only decoding).
WEBSITE=https://www.ecmwf.int/en/computing/software
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/lib/libeccodes.so
$(PREFIX)/lib/libeccodes.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" OPTIONS="-DBUILD_SHARED_LIBS=ON -DCMAKE_PREFIX_PATH='$(PREFIX);$(PREFIX)/../scientific_core' -DENABLE_MEMFS=OFF -DENABLE_PYTHON=OFF -DNETCDF_PATH=$(PREFIX)/../scientific_core -DENABLE_JPG=ON -DENABLE_NETCDF=ON -DENABLE_FORTRAN=ON" download uncompress configure_cmake3 build_cmake install_cmake
