include ../../../adm/root.mk

export HDF5_DIR=$(PREFIX)/../scientific_core
export GEOS_DIR=$(PREFIX)/../scientific_core
export INCLUDE_DIRS=$(PREFIX)/../scientific_core/include:$(PREFIX)/../scientific/include
export LIBRARY_DIRS=$(PREFIX)/../scientific_core/lib:$(PREFIX)/../scientific/lib
export UDUNITS2_INCDIR=$(PREFIX)/../scientific/include
export UDUNITS2_LIBDIR=$(PREFIX)/../scientific/lib
export UDUNITS2_XML_PATH=$(PREFIX)/../scientific/share/udunits/udunits2.xml
export PYCURL_SSL_LIBRARY=openssl

include $(MFEXT_HOME)/share/python3_layer.mk
