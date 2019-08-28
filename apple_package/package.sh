#!/bin/bash

DIR=$(cd "$(dirname "$0")"; pwd)
cd "$DIR"

rm -rf ../build/distributions/PennSim.app/
mkdir -p ../build/distributions/PennSim.app/Contents
mkdir ../build/distributions/PennSim.app/Contents/MacOS
mkdir ../build/distributions/PennSim.app/Contents/jre
mkdir ../build/distributions/PennSim.app/Contents/Resources


# Copy JAR
cp ../PennSim.jar ../build/distributions/PennSim.app/Contents/

# Copy start script
cp ./launch.sh ../build/distributions/PennSim.app/Contents/MacOS
chmod +x ../build/distributions/PennSim.app/Contents/MacOS/launch.sh

# Copy jre
cp -r ../build/jre ../build/distributions/PennSim.app/Contents/

# Copy Info.plist
cp ./Info.plist ../build/distributions/PennSim.app/Contents/
