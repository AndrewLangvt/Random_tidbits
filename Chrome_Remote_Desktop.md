## Setup of Chrome Remote Desktop (CRD) on an Ubuntu Virutal Machine

1) Launch Ubuntu Instance
2) update your system
```
sudo apt update &&
sudo apt -y upgrade &&
```

3) set account password to access CRD once established
    - `sudo passwd ubuntu` (or other username)
4) Install xfce4
    - `sudo apt -y install xfce4`
5) Reboot your instance (easiest to do this through the web interface)
6) Follow instructions [here](https://remotedesktop.google.com/headless) to install CRD
    - download CRD 
    
        `wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb`
    - install deb file 
    
        `sudo dpkg -i chrome-remote-desktop_current_amd64.deb`
    - authorize CRD to set up a new computer (click authorize)
    - set up another computer by copy/paste code into remote computer. Should look something like below:
        ```
        DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/xAEnT6vfILdYK0bUpEGSALIorpDCTD4o9WKrWAA2284aIHezUlWp5v2s_y53EMPpah0xghJu8XzwvOVN4EZulWs" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=
        ```
        (NOTE: if you encounter an 'Oauth' error, simply refresh the CRD page to get a new code to paste into your remote machine)

7) provide a name, and PIN for your remote desktop 
8) Navigate to CRD on your local machine to access your remote desktop
9) On your remote desktop
    - if you want to access the internet, install firefox 
    
        `sudo apt-get install firefox`
    - to install atom 
    
        `sudo apt-get install atom`
