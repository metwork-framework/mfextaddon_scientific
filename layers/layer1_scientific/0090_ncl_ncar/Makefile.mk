include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=ncl
export VERSION=6.6.2
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=38e3d2b55490f6eac93035d31579a45e
DESCRIPTION=\
NCL (NCAR Command Language) is a scripting language for the analysis and visualization of climate and weather data
WEBSITE=https://www.ncl.ucar.edu/
LICENSE=Apache 2.0

#inspired by ncl.spec in https://download-ib01.fedoraproject.org/pub/epel/9/Everything/source/tree/Packages/n/ncl-6.6.2-24.el9.src.rpm

RPM_OPT_FLAGS=$(shell outside rpm -E %optflags)
FCOPTIONS=$(RPM_OPT_FLAGS) -fPIC -fno-second-underscore -fno-range-check -fopenmp -fallow-argument-mismatch -fcommon -DH5_USE_110_API
CCOPTIONS=$(RPM_OPT_FLAGS) -std=c99 -fPIC -fno-strict-aliasing -fopenmp -fcommon -DH5_USE_110_API

all::$(PREFIX)/bin/ncl
$(PREFIX)/bin/ncl:
	mkdir -p $(PREFIX)/share/ncarg
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress
	cp Site.local build/$(NAME)-$(VERSION)/config/Site.local
	cd build/$(NAME)-$(VERSION) && ./config/ymkmf && make Build CCOPTIONS="$(CCOPTIONS)" F77=gfortran F77_LD=gfortran CTOFLIBS="-lgfortran" FCOPTIONS="$(FCOPTIONS)" COPT= FOPT= && make install
	cd $(PREFIX)/lib/ncarg && rm -rf udunits && ln -s $(PREFIX)/share/udunits udunits
