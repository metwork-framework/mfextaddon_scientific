include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=esmf
export VERSION=8.3.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=1c63452453fc913b2990f3add7d7aff3
DESCRIPTION=\
The Earth System Modeling Framework (ESMF) is a suite of software tools for developing high-performance, multi-component Earth science modeling applications. Such applications may include a few or dozens of components representing atmospheric, oceanic, terrestrial, or other physical domains, and their constituent processes (dynamical, chemical, biological, etc.).
WEBSITE=http://www.earthsystemmodeling.org
LICENSE=NCSA Open Source License (https://opensource.org/licenses/NCSA)

export ESMF_DIR=$(CURDIR)/build/$(NAME)-$(VERSION)
export ESMF_INSTALL_PREFIX=$(PREFIX)/$(NAME)
export ESMF_INSTALL_HEADERDIR=$(ESMF_INSTALL_PREFIX)/include
export ESMF_INSTALL_MODDIR=$(ESMF_INSTALL_PREFIX)/mod
export ESMF_INSTALL_LIBDIR=$(ESMF_INSTALL_PREFIX)/lib
export ESMF_INSTALL_BINDIR=$(ESMF_INSTALL_PREFIX)/bin
export ESMF_INSTALL_DOCDIR=$(ESMF_INSTALL_PREFIX)/doc
export ESMF_NETCDF=nc-config

all:: $(ESMF_INSTALL_LIBDIR)/libesmf.so
$(ESMF_INSTALL_LIBDIR)/libesmf.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRALDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/../scientific_core/lib" download uncompress build install
