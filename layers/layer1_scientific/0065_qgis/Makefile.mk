include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=QGIS
export VERSION=3_26_3
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=70dba9a5be53adc7b7e64320e36d7978
export EXPLICIT_NAME=$(NAME)-final-$(VERSION)
export SCIENTIFIC_ROOT=$(PREFIX)/../scientific_core
DESCRIPTION=\
QGIS is a full-featured, user-friendly, free-and-open-source (FOSS) geographical information system (GIS)
WEBSITE=https://www.qgis.org/fr/site/
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/qgis_process
$(PREFIX)/bin/qgis_process:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" OPTIONS="DCMAKE_PREFIX_PATH='$(PREFIX);$(PREFIX)/../scientific_core' -DGEOS_LIBRARY=$(SCIENTIFIC_ROOT)/lib/libgeos_c.so -DGEOS_INCLUDE_DIR=$(SCIENTIFIC_ROOT)/include -DPROJ_LIBRARY=$(SCIENTIFIC_ROOT)/lib/libproj.so -DPROJ_INCLUDE_DIR=$(SCIENTIFIC_ROOT)/include -DPostgreSQL_LIBRARY=$(SCIENTIFIC_ROOT)/lib/libpq.so -DPostgreSQL_INCLUDE_DIR=$(SCIENTIFIC_ROOT)/include -DSPATIALITE_LIBRARY=$(SCIENTIFIC_ROOT)/lib/libspatialite.so  -DSPATIALITE_INCLUDE_DIR=$(SCIENTIFIC_ROOT)/include -DWITH_BINDINGS=FALSE -DWITH_GUI=FALSE -DWITH_DESKTOP=FALSE -DWITH_SERVER=TRUE" download uncompress configure_cmake3 build_cmake install_cmake
