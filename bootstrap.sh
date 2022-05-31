#!/bin/bash

set -eu

function get_abs_filename() {
    echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

function usage() {
   echo "usage: ./bootstrap.sh MFEXT_HOME"
}

if test "${1:-}" = "--help"; then
    usage
    exit 0
fi
if test "${1:-}" = ""; then
    usage
    exit 1
fi

MFEXT_HOME=$(get_abs_filename "$1")
export MFEXT_HOME
MFEXT_VERSION=$(cat "${MFEXT_HOME}/config/version")
export MFEXT_VERSION
MFMODULE_VERSION=$("${MFEXT_HOME}/bin/guess_version.sh")
export MFMODULE_VERSION
export MFMODULE_HOME=${MFEXT_HOME}

export MFMODULE=MFEXT
export MFMODULE_LOWERCASE=mfext
export MFEXTADDON=1
SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export SRC_DIR

if ! test -d adm; then mkdir adm; fi
rm -f adm/root.mk
touch adm/root.mk

ROOT_PATH=${MFEXT_HOME}/bin:${MFEXT_HOME}/opt/core/bin:${PATH:-}

echo "Making adm/root.mk..."
rm -f adm/root.mk adm/envtpl
touch adm/root.mk
ln -s "${MFEXT_HOME}/bin/envtpl" adm/envtpl

echo "export MFMODULE := ${MFMODULE}" >>adm/root.mk
echo "export MFMODULE_LOWERCASE := $(echo ${MFMODULE} | tr '[:upper:]' '[:lower:]')" >>adm/root.mk
echo "export LAYERAPI2_LAYERS_PATH := ${MFEXT_HOME}/opt:${MFEXT_HOME}" >>adm/root.mk
echo "export MFEXT_HOME := ${MFEXT_HOME}" >>adm/root.mk
echo "export MFEXT_ADDON := 1" >>adm/root.mk
echo "export MFEXT_ADDON_NAME := scientific" >>adm/root.mk
echo "export MFEXT_VERSION := ${MFEXT_VERSION}" >>adm/root.mk
echo "export MFMODULE_HOME := ${MFMODULE_HOME}" >>adm/root.mk
echo "export MFMODULE_VERSION := ${MFEXT_VERSION}" >>adm/root.mk
echo "export SRC_DIR := ${SRC_DIR}" >>adm/root.mk
echo "ifeq (\$(FORCED_PATHS),)" >>adm/root.mk
echo "  export PATH := ${ROOT_PATH}" >>adm/root.mk
echo "  export LD_LIBRARY_PATH := ${MFEXT_HOME}/lib" >>adm/root.mk
echo "  export PKG_CONFIG_PATH := ${MFEXT_HOME}/lib/pkgconfig" >>adm/root.mk
echo "  LAYER_ENVS:=\$(shell env |grep '^LAYERAPI2_LAYER_.*_LOADED=1\$\$' |awk -F '=' '{print \$\$1;}')" >>adm/root.mk
echo "  \$(foreach LAYER_ENV, \$(LAYER_ENVS), \$(eval unexport \$(LAYER_ENV)))" >>adm/root.mk
echo "endif" >>adm/root.mk

if test "${ftp_proxy:-}" != ""; then
    echo "export ftp_proxy:=${ftp_proxy:-}" >>adm/root.mk
fi
if test "${FTP_PROXY:-}" != ""; then
    echo "export FTP_PROXY:=${FTP_PROXY:-}" >>adm/root.mk
fi
if test "${http_proxy:-}" != ""; then
    echo "export http_proxy:=${http_proxy:-}" >>adm/root.mk
fi
if test "${https_proxy:-}" != ""; then
    echo "export https_proxy:=${https_proxy:-}" >>adm/root.mk
fi
if test "${HTTPS_PROXY:-}" != ""; then
    echo "export HTTPS_PROXY:=${HTTPS_PROXY:-}" >>adm/root.mk
fi
if test "${HTTP_PROXY:-}" != ""; then
    echo "export HTTP_PROXY:=${HTTP_PROXY:-}" >>adm/root.mk
fi

# FIXME: do not hardcode this
# FIXME: move to layer root extra_env ?
echo "export PYTHON3_SHORT_VERSION := 3.9" >>adm/root.mk

echo "BOOTSTRAP DONE !"
echo "MFEXT_HOME=${MFEXT_HOME}"
