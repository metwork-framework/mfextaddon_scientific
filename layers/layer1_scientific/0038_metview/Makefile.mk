include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=Metview
export VERSION=5.7.2.1
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=bc6db8de64e80b49bd089ab0b550ec5e
export EXPLICIT_NAME=$(NAME)-$(VERSION)-Source
DESCRIPTION=\
Metview is a meteorological workstation application designed to be a complete \
working environment for both the operational and research meteorologist.\
Its capabilities include powerful data access, processing and visualisation.
WEBSITE=https://www.ecmwf.int/en/computing/software
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/metview
$(PREFIX)/bin/metview:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" OPTIONS="-DCMAKE_INSTALL_PREFIX=$(PREFIX) -DCMAKE_PREFIX_PATH=\"$(PREFIX);$(PREFIX)/../scientific_core;$(PREFIX)/../core\" -DENABLE_UI=OFF -DENABLE_METVIEW_FORTRAN=OFF -DNETCDF_PATH=$(PREFIX)/../scientific_core" download uncompress configure_cmake3 build_cmake install_cmake
