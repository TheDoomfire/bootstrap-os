# Bootstrap OS
Run this after a fresh OS install to install and configure the OS.

## Find settings to add

Run `dconf watch /` and see what toggling a setting does.

/org/cinnamon/desktop-effects-workspace false
=>
gsettings set org.cinnamon desktop-effects-workspace false
