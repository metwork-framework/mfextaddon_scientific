include ../../../adm/root.mk

export HDF5_DIR=$(PREFIX)/../scientific_core
export GEOS_DIR=$(PREFIX)/../scientific_core
export PYCURL_SSL_LIBRARY=openssl

include $(MFEXT_HOME)/share/python2_layer.mk
