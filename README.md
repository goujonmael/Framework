# Framework
<img align="right" width="150" height="150" src="https://frame.work/assets/family/diy_laptop-f402ff777de39ff72aa9eae12c2fa28733e885074731c53e9530ff93fb6a399c.jpg">
<br/><br/>
Configurations and scripts for my Framework computer
<br/><br/><br/>

## Scripts :
### Battery Management
- Limit the charge of the battery (%) and notify the user
![60percent](https://github.com/user-attachments/assets/8daa319e-644a-4593-a582-7bce5185ccc9)
#### Requirements
We should allow the current user to interact with the "framework_tool" command without password :
`sudo visudo`
`user_name ALL=(ALL) NOPASSWD: /usr/bin/framework_tool`

## Configurations :
### Hyprland
- basic white borders for current window
- french keyboard
- 2 monitors (laptop 2880x1920@120.00Hz & external 2560x1440@120.00Hz)
- fileManager = dolphin
- menu = wofi
- start waybar, discord & kdeconnect-indicator at startup
### Waybar
![image](https://github.com/user-attachments/assets/c96d0e31-8b3d-45fa-91f9-ed593a4255af)
#### Left-side :
- Current desktop
- Network connexion => on-click open nmtui
#### Middle-side :
- CPU : temp/ usage / freq
- Power profile switch
- RAM : usage
- GPU : Core & Vram usages / temp
#### Right-side :
- Screen brightness %
- Sound volume %
- Battery % => on-click toggle to limit to 60% / 100% charge
- Time

## Patch Scroll Speed
When scrolling on trackpad under wayland I experience a scroll factor too high.
### libinput-config
Install and configure :
![libinput-config](https://gitlab.com/warningnonpotablewater/libinput-config)
Create a config file under `/etc/libinput.conf`:
‘scroll-factor=.2’
### For Fedora / Bluefin 
https://jackwilsdon.me/libinput-config-silverblue/
Download and build libinput-config:
```bash
    $ toolbox enter
    ⬢ $ sudo dnf install -y gcc libinput-devel meson
    ⬢ $ git clone https://gitlab.com/warningnonpotablewater/libinput-config.git
    ⬢ $ cd libinput-config
    ⬢ $ meson build
    ⬢ $ ninja -C build
    ⬢ $ mkdir -p ~/.local/lib64
    ⬢ $ cp build/libinput-config.so ~/.local/lib64
    ⬢ $ exit
```
Add a unit override to load libinput-config (note this step is specific to Gnome):
```bash
    $ mkdir -p ~/.config/systemd/user/org.gnome.Shell@wayland.service.d/
    $ cat <<EOF >> ~/.config/systemd/user/org.gnome.Shell@wayland.service.d/libinput-config.conf
    [Service]
    Environment="LD_PRELOAD=%h/.local/lib64/libinput-config.so"
    EOF
```
Edit /etc/libinput.conf and set your desired settings (see How to use).
Log out and back in again.
