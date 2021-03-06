#!/usr/bin/env bash

# Run Weathermap.
#

BASEDIR=/opt/observium/html/weathermap
CONFIGS=configs
OUTPUT=output
HREF="https://observium.erickson.is/weathermap/"

pushd ${BASEDIR}
for config in $(ls ${CONFIGS}|grep 'conf$'); do
		HTML=${config/.conf/.html}
		IMAGE=${config/.conf/.png}
		./weathermap --config ${CONFIGS}/${config} --output ${OUTPUT}/${IMAGE} --htmloutput ${OUTPUT}/${HTML} --base-href ${HREF}
done		


