include ../../../adm/root.mk

export HDF5_DIR=$(PREFIX)/../scientific_core
export GEOS_DIR=$(PREFIX)/../scientific_core
export INCLUDE_DIRS=$(PREFIX)/../scientific_core/include:$(PREFIX)/../scientific/include
export LIBRARY_DIRS=$(PREFIX)/../scientific_core/lib:$(PREFIX)/../scientific/lib

include $(MFEXT_HOME)/share/python3_layer.mk
