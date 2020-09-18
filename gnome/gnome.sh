cp -r ./gnome/_themes ~/.themes
cp -r ./gnome/_icons ~/.icons

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable workspace-indicator@gnome-shell-extensions.gcampax.github.com

gsettings set org.gnome.desktop.interface gtk-theme "Kripton"
gsettings set org.gnome.shell.extensions.user-theme name "Kripton"
gsettings set org.gnome.desktop.interface icon-theme "Tela-grey-dark"
gsettings set org.gnome.desktop.interface cursor-theme "volantes_cursors"

gsettings set org.gnome.shell.app-switcher current-workspace-only true
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true
