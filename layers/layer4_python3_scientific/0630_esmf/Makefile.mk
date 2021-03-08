include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=esmf
export VERSION=7_1_0r
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=980da40d07ae6393ed8551790d7c282e
DESCRIPTION=\
Earth System Modeling Framework (ESMF) Python Interface (ESMPy)
WEBSITE=http://www.earthsystemmodeling.org
LICENSE=University of Illinois NCSA Open Source License (https://opensource.org/licenses/NCSA)
export EXPLICIT_NAME=esmf-ESMF_$(VERSION)

export ESMF_DIR=$(CURDIR)/build/$(EXPLICIT_NAME)
export ESMF_INSTALL_PREFIX=$(PREFIX)/../scientific/$(NAME)
export ESMF_INSTALL_HEADERDIR=$(ESMF_INSTALL_PREFIX)/include
export ESMF_INSTALL_MODDIR=$(ESMF_INSTALL_PREFIX)/mod
export ESMF_INSTALL_LIBDIR=$(ESMF_INSTALL_PREFIX)/lib
export ESMF_INSTALL_BINDIR=$(ESMF_INSTALL_PREFIX)/bin
export ESMF_INSTALL_DOCDIR=$(ESMF_INSTALL_PREFIX)/doc
export ESMF_NETCDF=nc-config

#We need gfortran >= 4.5 to build
GFORTRAN_VERSION = `gfortran --version | head -1 | cut -d" " -f4 | cut -d"." -f1-2`
DEVTOOLSET = 7

ifeq ($(shell expr $(GFORTRAN_VERSION) \< "4.5" ), 1)

all:: $(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/ESMPy-700-py$(PYTHON3_SHORT_VERSION).egg-info
$(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/ESMPy-700-py$(PYTHON3_SHORT_VERSION).egg-info:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" download uncompress
	scl enable devtoolset-$(DEVTOOLSET) 'cd build/$(EXPLICIT_NAME)/src/addon/ESMPy && python setup.py build --ESMFMKFILE=$(ESMF_INSTALL_LIBDIR)/esmf.mk && python setup.py install --prefix=$(PREFIX)'

else

all:: $(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/ESMPy-700-py$(PYTHON3_SHORT_VERSION).egg-info
$(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/ESMPy-700-py$(PYTHON3_SHORT_VERSION).egg-info:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" download uncompress
	cd build/$(EXPLICIT_NAME)/src/addon/ESMPy && python setup.py build --ESMFMKFILE=$(ESMF_INSTALL_LIBDIR)/esmf.mk && python setup.py install --prefix=$(PREFIX)

endif
