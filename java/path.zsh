#!/bin/sh

# give more memory to maven
export MAVEN_OPTS="-Xmx1024m"

# set $JAVA_HOME (Java 8)
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
