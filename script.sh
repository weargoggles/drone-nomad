#!/usr/bin/env bash

set -e

set -x

export NOMAD_ADDR=${PLUGIN_NOMAD_ADDRESS}
IMAGE_TAG=${PLUGIN_IMAGE_TAG:-latest}

# substitute the desired tag
sed "s/IMAGE_TAG/${IMAGE_TAG}/" ${PLUGIN_CONFIGURATION} > config-${IMAGE_TAG}.hcl

/bin/nomad run config-${IMAGE_TAG}.hcl
