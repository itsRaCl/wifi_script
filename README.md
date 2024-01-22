# BITS WIFI Auto Login Script

## Prerequisites

- NetworkManager
- Enable the NetworkManager-dispatcher.service (if using systemd)
- wireless-tools (<a href="https://archlinux.org/packages/extra/x86_64/wireless_tools/">Arch Linux Package</a>)

## Setup

- This is only for devices using NetworkManager
- Place the above file in the `/etc/NetworkManager/dispatcher.d/` folder
  Make sure to replace <your_username> with your wifi username and <your_password> with your wifi password and replace the special characters in your password with their respective <a href="https://w3schools.com/tags/ref_urlencode.ASP">URL Encoding</a>
- Change the ownership of the file to root (Required otherwise NetworkManager dispatcher won't run the script)
  `# chown root:root 10-wifi_auto_login.sh`
- Make the file executable
  `# chmod +x 10-wifi_auto_login.sh`
