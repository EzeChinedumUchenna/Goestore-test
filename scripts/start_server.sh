#!/bin/bash
cd /opt/tomcat/webapps
mvn jetty:run -Dovrdir=postgres -Pextjs,postgres > /var/log/geostore.log 2>&1 &
