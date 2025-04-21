include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=dcw-gmt
export VERSION=2.2.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=7f6dc21dbe8db7ad41035170eb028924
DESCRIPTION=\
GSHHG is the Digital Chart of the World Data
WEBSITE=https://www.generic-mapping-tools.org
LICENSE=LGPL

all::build/$(NAME)-$(VERSION)/dcw-gmt.nc
build/$(NAME)-$(VERSION)/dcw-gmt.nc:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress
	cd build && mv -f $(NAME)-$(VERSION) $(NAME)
