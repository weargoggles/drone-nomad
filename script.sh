#!/bin/sh

set -e

export NOMAD_ADDR=$PLUGIN_NOMAD_ADDRESS

/bin/nomad run $PLUGIN_CONFIGURATION
