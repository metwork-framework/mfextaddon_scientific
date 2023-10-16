include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=FFmpeg
export VERSION=6.0
export EXTENSION=tar.xz
export CHECKTYPE=MD5
export CHECKSUM=47b6c5d930937413c3e308e2fdb3dfb5
export EXPLICIT_NAME=ffmpeg-$(VERSION)
DESCRIPTION=\
FFmpeg is a collection of libraries and tools to process multimedia content such as audio, video, subtitles and related metadataœ
WEBSITE=https://ffmpeg.org/
LICENSE=LGPL with optional components licensed under GPL

all::$(PREFIX)/bin/ffmpeg
$(PREFIX)/bin/ffmpeg:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME=$(EXPLICIT_NAME) OPTIONS="--disable-x86asm --disable-static --enable-shared --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libopenjpeg --enable-librsvg --enable-libxml2 --enable-libzmq" download uncompress configure build install
