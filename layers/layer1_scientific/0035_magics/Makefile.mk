include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=Magics
export VERSION=4.15.4
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=6a052cb5e4a95938eddd45fb836c68c4
export EXPLICIT_NAME=$(NAME)-$(VERSION)-Source
export SCIENTIFIC_ROOT=$(PREFIX)/../scientific_core
#Python (Jinja2) is required for build, even if we don t build python api
export PYTHONPATH=$(PREFIX)/../python3/lib/python$(PYTHON3_SHORT_VERSION)/site-packages:$(PREFIX)/../python3_core/lib/python$(PYTHON3_SHORT_VERSION)/site-packages
export PYTHON=$(PREFIX)/../python3_core/bin/python
DESCRIPTION=\
Magics is the latest generation of the ECMWF's meteorological plotting software.
WEBSITE=https://www.ecmwf.int/en/computing/software
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/magmlx
$(PREFIX)/bin/magmlx:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" OPTIONS="-DENABLE_GEOTIFF=ON -DENABLE_FORTRAN_C_INTERFACE=ON -DENABLE_METVIEW_NO_QT=ON -DNETCDF_PATH=$(SCIENTIFIC_ROOT) -DPROJ_PATH=$(SCIENTIFIC_ROOT) -DGEOTIFF_PATH=$(SCIENTIFIC_ROOT)" download uncompress configure_cmake3 build_cmake install_cmake
