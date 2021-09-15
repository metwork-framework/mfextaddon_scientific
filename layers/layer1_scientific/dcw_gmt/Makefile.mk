include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=dcw-gmt
export VERSION=2.0.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=1c817d29313be265e895be4534eccb01
DESCRIPTION=\
GSHHG is the Digital Chart of the World Data
WEBSITE=https://www.generic-mapping-tools.org
LICENSE=LGPL

all::build/$(NAME)-$(VERSION)/dcw-gmt.nc
build/$(NAME)-$(VERSION)/dcw-gmt.nc:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress
	cd build && mv $(NAME)-$(VERSION) $(NAME)
