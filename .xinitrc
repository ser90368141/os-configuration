mkdir -p "$HOME"/.local/share/keyrings
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# init keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# export keyring
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

exec dbus-launch i3
