# PennSim Package

This project consists of files necessary to build PennSim installers and app packages for windows and macos.

## Preparation for Packaging
- Place the PennSim jar in the project root.
- Install [InnoSetup]() and [java](adoptopenjdk.net)

## Building windows installers
- Download the latest [Java 11 JRE](https://adoptopenjdk.net/releases.html) pacakge (not installer) for Windows x32.
- Extract the jre into a folder called `launch4j/jre` in the build directory
- Open cmd in folder
- Run .\gradlew createExe
- Open the iss file with inno setup and compile it.
- The resulting exe will be in build

## Building for macOS
- NOTE: Do not build for macOS from a windows PC. Line endings when cloned from git will be wrong and the app won't work.

- Download the latest [Java 11 JRE](https://adoptopenjdk.net/releases.html) pacakge (not installer) for macOS.
- Unzip it and place the resulting folder in the build direcotry called jre
- Run package.sh in a terminal opened in the apple_package dir.
- Place the generated app (from build/distributions) into the PennSim folder in apple_pacakge/PennSim/
- Zip the pennsim folder