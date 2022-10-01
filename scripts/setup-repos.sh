echo "Enabling the RPM Fusion repositories"
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf group update core
echo "Enabling the Flathub repositorie"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
