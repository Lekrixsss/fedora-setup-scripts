#bash

#Check is RPMFusion repo installed
if sudo dnf list rpmfusion-free-appstream-data | grep -q 'rpmfusion-free-appstream-data.noarch'; then
  echo "RPMFusion already installed"
    #Codecs
    echo "Installing codecs"
    sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
    sudo dnf install -y lame\* --exclude=lame-devel
    sudo dnf group upgrade -y --with-optional Multimedia

    #Tainted
    tained="Install additional codecs from tainted repo? (May be restricted in some countries) (y/N): "
      if [ "$tainted" = y ]
      then
      echo "Installing codecs from tainted"
        sudo dnf install rpmfusion-free-release-tainted
        sudo dnf install libdvdcss
fi
do
echo "Enabling the RPM Fusion repositories"
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf group update core

done
