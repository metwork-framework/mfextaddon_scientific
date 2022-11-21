include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=FFmpeg
export VERSION=5.0.2
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=875b5250eb7ccd68e60cc9b65dd891c6
export EXPLICIT_NAME=$(NAME)-n$(VERSION)
DESCRIPTION=\
FFmpeg is a collection of libraries and tools to process multimedia content such as audio, video, subtitles and related metadataœ
WEBSITE=https://ffmpeg.org/
LICENSE=LGPL with optional components licensed under GPL

# opencv-contrib-python-headless 4.6.0.66 doesn't build with ffmpeg >= 5.1 
# it should be ok with next opencv-contrib-python-headless release
all::$(PREFIX)/bin/ffmpeg
$(PREFIX)/bin/ffmpeg:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME=$(EXPLICIT_NAME) OPTIONS="--disable-x86asm --disable-static --enable-shared --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libopenjpeg --enable-librsvg --enable-libxml2 --enable-libzmq" download uncompress configure build install
