include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=gshhg-gmt
export VERSION=2.3.7
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=8ee2653f9daf84d49fefbf990bbfa1e7
DESCRIPTION=\
GSHHG is the Global Self-consistent Hierarchical High-resolution Geography Database
WEBSITE=https://www.generic-mapping-tools.org
LICENSE=LGPL

all::build/$(NAME)-$(VERSION)/binned_border_c.nc
build/$(NAME)-$(VERSION)/binned_border_c.nc:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress
	cd build && mv $(NAME)-$(VERSION) $(NAME)
