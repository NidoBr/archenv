# archenv
## Creates a clean, build-ready environment based on Arch Linux.
I created this to compile [PKGBUILD](https://wiki.archlinux.org/title/PKGBUILD) in a cleaner way, avoiding some errors that can commonly occur in a cluttered environment.
# Obs: Experimental - not 100% functional; "devtools" or "systemd-nspawn" are more functional and recommended options.

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

## Useful links
[Arch build system](https://wiki.archlinux.org/title/Arch_build_system)

[Makepkg](https://wiki.archlinux.org/title/Makepkg)

[PKGBUILD](https://wiki.archlinux.org/title/PKGBUILD)
