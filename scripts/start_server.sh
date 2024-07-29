#!/bin/bash
cd src/web/app/
pkill -f 'mvn jetty:run'  # Ensure any previous Jetty instance is stopped
mvn jetty:run -Dovrdir=postgres -Ppostgres > /var/log/geostore.log 2>&1 &
