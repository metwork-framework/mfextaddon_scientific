include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=libimagequant
export VERSION=4.3.4
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=b62f17187347ea48daf4c5ef4321823b
DESCRIPTION=\
Imagequant library converts RGBA images to palette-based 8-bit indexed images, including alpha component
WEBSITE=https://pngquant.org/lib/
LICENSE=GPL v3 or later with additional copyright notices for older parts of the code

$(shell echo "prefix=$(PREFIX)" > imagequant.pc)
$(shell echo "exec_prefix=$(PREFIX)" >> imagequant.pc)
$(shell echo "libdir=$(PREFIX)/lib" >> imagequant.pc)
$(shell echo "includedir=$(PREFIX)/include" >> imagequant.pc)
$(shell echo "" >> imagequant.pc)
$(shell echo "Name: $(NAME)" >> imagequant.pc)
$(shell echo "Description: Imagequant library converts RGBA images to palette-based 8-bit indexed images" >> imagequant.pc)
$(shell echo "Version: $(VERSION)" >> imagequant.pc)
$(shell cat imagequant.end >> imagequant.pc)

all:: $(PREFIX)/lib/$(NAME).so
$(PREFIX)/lib/$(NAME).so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress
	export PATH=$(PATH):$(PWD)/../0001_cargo_c/.cargo/bin && cd build/$(NAME)-$(VERSION)/imagequant-sys && cargo cinstall --destdir=.
	cd build/$(NAME)-$(VERSION)/imagequant-sys && cp -p usr/local/lib64/lib*so* $(PREFIX)/lib && cp -p usr/local/include/*.h $(PREFIX)/include
	mkdir -p $(PREFIX)/lib/pkgconfig && cp imagequant.pc $(PREFIX)/lib/pkgconfig
	rm -f imagequant.pc
