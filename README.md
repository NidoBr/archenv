# archenv
## Creates a clean, build-ready environment based on Arch Linux.
I created this to compile PKGBUILD in a cleaner way, avoiding some errors that can commonly occur in a cluttered environment.

## Files:
```
arch_buildenv - generates the environment
archenv - starts/stops the environment correctly
init_config.sh - configures the environment
```
## First steps
If you want, configure the directory in the scripts, the variable "_direnv="
```
Execute:
# arch_​buildenv
```
This will create the environment for fakeroot, already configured with the necessary tools.

## Usage:
```
To start correctly:
# archenv start

To enter the environment:
# archenv enter

To shut down correctly, unmounting all targets:
# archenv stop
```
