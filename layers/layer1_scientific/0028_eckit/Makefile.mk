include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=eckit
export VERSION=1.28.7
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=7d6d8c10fce363f37a8d8df55c918911
DESCRIPTION= ecKit is a cross-platform c++ toolkit that supports development of tools and applications at ECMWF
WEBSITE=https://github.com/ecmwf/eckit
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/eckit-version

$(PREFIX)/bin/eckit-version:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure_cmake3 build_cmake install_cmake
