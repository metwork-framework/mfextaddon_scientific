include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=harfbuzz
export VERSION=2.6.1
export EXTENSION=tar.xz
export CHECKTYPE=MD5
export CHECKSUM=89b758a2eb14d56a94406cf914b62388
DESCRIPTION=\
HarfBuzz is a text shaping engine. It primarily supports OpenType, but also \
Apple Advanced Typography
WEBSITE=https://www.freedesktop.org/wiki/Software/HarfBuzz/
LICENSE=Old MIT

#ICU support would need libicu >= 4.4

all::$(PREFIX)/lib/libharfbuzz.so
$(PREFIX)/lib/libharfbuzz.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="--with-icu=no --with-cairo=yes" download uncompress configure build install
