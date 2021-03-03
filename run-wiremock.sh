#!/bin/bash

mkdir wiremock && cd wiremock
curl https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-jre8-standalone/2.27.2/wiremock-jre8-standalone-2.27.2.jar --output wiremock-jre8-standalone-2.27.2.jar
mkdir mappings
cp ../mapping.json mappings/.
java -jar wiremock-jre8-standalone-2.27.2.jar --port 8081 &