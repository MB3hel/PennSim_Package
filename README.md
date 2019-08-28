# PennSim Package

This project consists of files necessary to build PennSim installers and app packages for windows and macos.

## Preparation for Packaging
- Place the PennSim jar in the project root.
- Install [InnoSetup]() and [java](adoptopenjdk.net)

## Building windows installers
- Download the latest [Java 8 JRE](https://adoptopenjdk.net/releases.html) pacakge (not installer) for Windows x32.
- Extract the jre into a folder called `launch4j/jre` in the build directory
- Open cmd in folder
- Run .\gradlew createExe
- Open the iss file with inno setup and compile it.
- The resulting exe will be in build

## Building for macOS
- NOTE: Do not build for macOS from a windows PC. Line endings when cloned from git will be wrong and the app won't work.

- Download the latest [Java 8 JRE](https://adoptopenjdk.net/releases.html) pacakge (not installer) for macOS.
- Unzip it and place the resulting folder in the build direcotry called jre
- Run package.sh in a terminal. Zip the resulting `.app` in the build directory along with the docs folder.