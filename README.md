# BITS WIFI Auto Login Script

## Prerequisites

- NetworkManager
- Enable the NetworkManager-dispatcher.service (if using systemd run `# systemctl enable --now NetworkManager-dispatcher.service`)
- wireless-tools (<a href="https://archlinux.org/packages/extra/x86_64/wireless_tools/">Arch Linux Package</a>)

## Setup

- This is only for devices using NetworkManager
- Place the above file in the `/etc/NetworkManager/dispatcher.d/` folder
  - Replace:
    - <your_username>: Your WiFi Username
    - <your_password>: Your WiFi Password (replace the special characters with their <a href="https://www.w3schools.com/tags/ref_urlencode.ASP">URL Encoding</a>)
    - <your_interface>: Your WiFi interface (`$ ip addr`)
- Change the ownership of the file to root (Required otherwise NetworkManager dispatcher won't run the script)
  <br>`# chown root:root 10-wifi_auto_login.sh`
- Make the file executable
  <br>`# chmod +x 10-wifi_auto_login.sh`
