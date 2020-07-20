#!/bin/bash

JVM_OPTIONS="-Djava.class.path="
JVM_OPTIONS+="./gears_runtime/target/gear_runtime-0.0.3-SNAPSHOT-jar-with-dependencies.jar:"
#JVM_OPTIONS+="./gears_runtime/lib/jackson-annotations-2.11.0.jar:"
#JVM_OPTIONS+="./gears_runtime/lib/jackson-core-2.11.0.jar:"
#JVM_OPTIONS+="./gears_runtime/lib/jackson-databind-2.11.0.jar"
#JVM_OPTIONS+=" -XX:+IdleTuningGcOnIdle";
JVM_OPTIONS+=" -Xms10m";
JVM_OPTIONS+=" -Xmx100m";
#JVM_OPTIONS+=" -XX:MaxMetaspaceSize=200m";
#JVM_OPTIONS+=" -Xrs";
#JVM_OPTIONS+=" -Xcheck:jni";
#JVM_OPTIONS+=" -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8379";
#JVM_OPTIONS+=" -Djava.rmi.server.hostname=myserver";
#JVM_OPTIONS+=" -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=11391 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false";

echo $JVM_OPTIONS

#LD_LIBRARY_PATH=/home/meir/work/RedisGears/deps/openj9-openjdk-jdk14/build/linux-x86_64-server-release/jdk/lib/server/ redis-server --loadmodule ../../redisgears.so PluginsDirectory ./ JvmOptions "$JVM_OPTIONS"
LD_LIBRARY_PATH=/usr/lib/jvm/java-11-openjdk-amd64/lib/server/ redis-server --loadmodule ../../redisgears.so PluginsDirectory ./ JvmOptions "$JVM_OPTIONS"
#LD_LIBRARY_PATH=../../deps/openj9-openjdk-jdk14/build/linux-x86_64-server-release/jdk/lib/server/ redis-server --loadmodule ../../redisgears.so PluginsDirectory ./ JvmOptions "$JVM_OPTIONS"
#redis-server --loadmodule ../../redisgears.so PluginsDirectory ./ JvmOptions "$JVM_OPTIONS"