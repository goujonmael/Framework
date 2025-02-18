# Framework
<img align="right" width="150" height="150" src="https://frame.work/assets/family/diy_laptop-f402ff777de39ff72aa9eae12c2fa28733e885074731c53e9530ff93fb6a399c.jpg">
<br/><br/>
Configurations and scripts for my Framework computer
<br/><br/><br/>

## Scripts :
### Battery Management
- Limit the charge of the battery (%) and notify the user
![60percent](https://github.com/user-attachments/assets/8daa319e-644a-4593-a582-7bce5185ccc9)

## Configurations :
### Hyprland
![image](https://github.com/user-attachments/assets/8d6b11e4-c442-4825-bf2d-61db8e553b45)
- basic white borders for current window
- french keyboard
- 2 monitors (laptop 2880x1920@120.00Hz & external 2560x1440@120.00Hz)
- fileManager = dolphin
- menu = wofi
- start waybar, discord & kdeconnect-indicator at startup
### Waybar
  ![image](https://github.com/user-attachments/assets/cd83c8e0-d631-4bf0-96ce-45aa1814ac94)
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
