# Software installation notes

Organized by software package.

## Phyparts (local)

0. Make sure your Java version is a JDK, not JRE (see if anything comes up if you do `javac -version`). Download [here](https://www.oracle.com/java/technologies/downloads/#jdk22-mac) if not.
1. In `bin` folder: `git clone https://bitbucket.org/blackrim/phyparts.git`
2. Download Apache Maven [here](https://maven.apache.org/download.cgi), unzip/untar
3. Add Apache Maven location to bash profile as $PATH
4. cd to `bin/phyparts/`, run `./mvn_cmdline.sh`
