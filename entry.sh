#!/bin/bash
sed -i s/MONGO_DB/${MONGO_DB}/g dashboard.properties
sed -i s/MONGO_USER/${MONGO_USER}/g dashboard.properties
sed -i s/MONGO_PASSWORD/${MONGO_PASSWORD}/g dashboard.properties
sed -i s/MONGO_SERVER/${MONGO_SERVER}/g dashboard.properties
/usr/bin/supervisord
