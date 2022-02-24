include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=ncl_ncar
export VERSION=6.6.2
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=dd36ef49b0be92b0142795059009d766
EXPLICIT_NAME=$(NAME)g-$(VERSION)
DESCRIPTION=\
NCL (NCAR Command Language) is a scripting language for the analysis and visualization of climate and weather data
WEBSITE=https://www.ncl.ucar.edu/
LICENSE=Apache 2.0

RPM_OPT_FLAGS=$(shell outside rpm -E %optflags)
FCOPTIONS=$(RPM_OPT_FLAGS) -fPIC -fno-second-underscore -fno-range-check -fopenmp
CCOPTIONS=$(RPM_OPT_FLAGS) -std=c99 -fPIC -fno-strict-aliasing -fopenmp -DACCEPT_USE_OF_DEPRECATED_PROJ_API_H -fcommon

all::$(PREFIX)/bin/ncl
$(PREFIX)/bin/ncl:
	#inspired by ncl.spec in https://download-ib01.fedoraproject.org/pub/epel/8/Everything/SRPMS/Packages/n/ncl-6.6.2-12.el8.src.rpm
	mkdir -p $(PREFIX)/share/ncarg
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" download uncompress
	cp Site.local build/$(EXPLICIT_NAME)/config/Site.local
	cd build/$(EXPLICIT_NAME) && ./config/ymkmf && make Build CCOPTIONS="$(CCOPTIONS)" F77=gfortran F77_LD=gfortran CTOFLIBS="-lgfortran" FCOPTIONS="$(FCOPTIONS)" COPT= FOPT= && make install
	cd $(PREFIX)/lib/ncarg && rm -rf udunits && ln -s $(PREFIX)/share/udunits udunits
