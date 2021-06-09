include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=FFmpeg
export VERSION=n4.4
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=8c52b3e3926fdbac1e7be3761035741d
DESCRIPTION=\
FFmpeg is a collection of libraries and tools to process multimedia content such as audio, video, subtitles and related metadataœ
WEBSITE=https://ffmpeg.org/
LICENSE=LGPL with optional components licensed under GPL

all::$(PREFIX)/bin/ffmpeg
$(PREFIX)/bin/ffmpeg:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="--disable-x86asm --disable-static --enable-shared" download uncompress configure build install
