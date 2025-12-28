Plasma Configuration Saver for KDE Plasma 6
===========
An applet to save your plasma configurations and change them on the fly.

**Note:** This is a fork of the original Plasma6ConfigurationSaver repository. This version includes a one-liner installation script for easier deployment. The original work is not mine - I only added the installation convenience.

## Warning:
- This is currently experimental, save your work before using.
- Your configurations will be safe, but you might experience crashes.
- Run `systemctl --user restart plasma-plasmashell` if the panels or the wallpaper stop showing. And they should be back.

## Install

### Manual Installation
To install manually, run `kpackagetool6 --install .` in the directory of the project.

### One-Liner Installation
For easy installation, use this one-liner (requires internet connection):

```bash
curl -s https://raw.githubusercontent.com/xAlcahest/Plasma6ConfigurationSaver/main/install.sh | bash
```

**Note:** Replace `YOUR_USERNAME` and `YOUR_REPO` with your actual GitHub username and repository name.

This script will:
- Download the plasmoid archive
- Extract it to a temporary location
- Install it using `kpackagetool6`
- Clean up temporary files

### Repository Setup
This repository contains:
- The complete plasmoid source code
- Installation script (`install.sh`)
- Pre-built archive (`plasma_config_saver.tar.gz`) for distribution
- Translation files and documentation

To set up your own repository:
1. Fork or clone this repository
2. Update the URLs in `install.sh` with your GitHub repository details
3. Create a GitHub release and upload `plasma_config_saver.tar.gz` as a release asset
4. Update the one-liner URL in this README

## Current Status
- Runs **almost** perfectly in plasmoidviewer.
- Crashes when applying theme after applet installed.
- Need to logout and login to see the changes in Color Scheme and such.

## Credits
This plasmoid is based on the original PlasmaConfSaver by paju1986, ported to Plasma 6 by dhruv8sh, and enhanced with a one-liner installer by xAlcahest.

**Original PlasmaConfSaver Repository:** [https://github.com/paju1986/PlasmaConfSaver](https://github.com/paju1986/PlasmaConfSaver)

**Plasma 6 Port Repository:** [https://github.com/dhruv8sh/Plasma6ConfigurationSaver](https://github.com/dhruv8sh/Plasma6ConfigurationSaver)

**Original Creator:** paju1986 - Created the original PlasmaConfSaver plasmoid.

**Plasma 6 Porter:** dhruv8sh - Ported the plasmoid to KDE Plasma 6.

**Fork Author:** xAlcahest - Added one-liner installation script for convenience. This fork is not affiliated with the original creators.
