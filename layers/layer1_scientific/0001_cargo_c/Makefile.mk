include ../../../adm/root.mk
include $(MFEXT_HOME)/share/simple_layer.mk

ifeq ($(PROXY_SET),0)
    unexport http_proxy
    unexport https_proxy
    unexport HTTP_PROXY
    unexport HTTPS_PROXY
endif

all:: .cargo
.cargo:
	mkdir -p build
	cd build && cargo install cargo-c@0.10.4+cargo-0.82.0 --locked
	mv ~/.cargo  .
