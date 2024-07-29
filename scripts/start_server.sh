#!/bin/bash
cd /opt/tomcat/webapps
pkill -f 'mvn jetty:run'  # Ensure any previous Jetty instance is stopped
mvn jetty:run -Dovrdir=postgres -Pextjs,postgres > /var/log/geostore.log 2>&1 &
