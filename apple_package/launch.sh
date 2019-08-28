#!/bin/sh

DIR=$(cd "$(dirname "$0")"; pwd)
NAME="PennSim"

cd "$DIR"
../jre/Contents/Home/bin/java -Xdock:name="$NAME" -cp "$DIR;.;" -jar ../PennSim.jar
