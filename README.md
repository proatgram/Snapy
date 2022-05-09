# Snapy
A utility for Snapcraft packages
## Building Snapy
### Dependancies
**PLEASE NOTE: If you do not have any of these dependancies installed on your system, do not worry! We will automatically clone the repository and add them to the build!**
 - [yaml-cpp](https://github.com/jbeder/yaml-cpp)
### Running the build commands
Snapys main build system is cmake, so to build, you will want to make a new build directory in the project directory. Then, you will want to build the project!
To do so, use the commands:
```
mkdir build && cd build
cmake ..
make && sudo make install
```
## Running Snapy
See the Wiki to learn how to use Snapy!
