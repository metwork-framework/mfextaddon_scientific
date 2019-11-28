include ../../../adm/root.mk

export HDF5_DIR=$(PREFIX)/../scientific_core
export GEOS_DIR=$(PREFIX)/../scientific_core

include $(MFEXT_HOME)/share/python2_layer_scl.mk
