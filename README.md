# archenv
## Creates a clean, build-ready environment based on Arch Linux.
Fiz para compilar PKGBUILD de forma mais limpa, evitando alguns erros que geralmente podem ocorrer em um ambiente poluido

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
