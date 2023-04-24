include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=protobuf
export VERSION=3.19.6
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=b7331eba550f936de2a94395dc002445
DESCRIPTION=\
Protocol buffers are Google's language-neutral, platform-neutral, extensible \
mechanism for serializing structured data – think XML, but smaller, faster, \
and simpler.
WEBSITE=https://developers.google.com/protocol-buffers
LICENSE=Google (https://github.com/protocolbuffers/protobuf/blob/master/LICENSE)

all:: $(PREFIX)/bin/protoc
$(PREFIX)/bin/protoc:
	#$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="--enable-static=no" download uncompress configure build check install
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="--enable-static=no" download uncompress configure build install
