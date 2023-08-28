#!/bin/bash

# Replace all properties if set
if [ "${UNIT_1_IP}" != "" ]; then
	sed -i "s/unit1IP/${UNIT_1_IP}/g" config.js
fi
if [ "${UNIT_1_NAME}" != "" ]; then
	sed -i "s/unit1Name/${UNIT_1_NAME}/g" config.js
fi
if [ "${UNIT_1_ICON}" != "" ]; then
	sed -i "s/fa-1/${UNIT_1_ICON}/g" config.js
fi
if [ "${UNIT_2_IP}" != "" ]; then
	sed -i "s/unit2IP/${UNIT_2_IP}/g" config.js
fi
if [ "${UNIT_2_NAME}" != "" ]; then
	sed -i "s/unit2Name/${UNIT_2_NAME}/g" config.js
fi
if [ "${UNIT_2_ICON}" != "" ]; then
	sed -i "s/fa-2/${UNIT_2_ICON}/g" config.js
fi
if [ "${UNIT_3_IP}" != "" ]; then
	sed -i "s/unit3IP/${UNIT_3_IP}/g" config.js
fi
if [ "${UNIT_3_NAME}" != "" ]; then
	sed -i "s/unit3Name/${UNIT_3_NAME}/g" config.js
fi
if [ "${UNIT_3_ICON}" != "" ]; then
	sed -i "s/fa-3/${UNIT_3_ICON}/g" config.js
fi
if [ "${REFRESH_INTERVAL}" != "" ]; then
	sed -i "s/2000/${REFRESH_INTERVAL}/g" config.js
fi

# run the php server
exec php -S 0.0.0.0:80
