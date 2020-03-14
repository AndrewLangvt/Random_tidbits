## Setup of Chrome Remote Desktop (CRD) on an Ubuntu Virutal Machine

1) Launch Ubuntu Instance
2) update your system
```
sudo apt-get update &&
sudo apt-get upgrade
```
3) Install xfce4
    - `sudo apt-get -y install xfce4`

5) Reboot your instance (easiest to do this through the web interface)
6) Follow instructions [here](https://remotedesktop.google.com/headless) to install CRD
    - download CRD 
    
        `wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb`
    - install deb file 
    
        `sudo apt-get -y install ./chrome-remote-desktop_current_amd64.deb`
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
    
        `sudo apt-get -y install firefox`
    - to install atom 
        ```
        sudo add-apt-repository ppa:webupd8team/atom
        sudo apt-get update
        sudo apt-get -y install atom
    - to install java
        ```
        sudo apt-get -y install default-jdk
    - to pull cromwell
        ```
        wget https://github.com/broadinstitute/cromwell/releases/download/49/cromwell-49.jar
        wget https://github.com/broadinstitute/cromwell/releases/download/49/womtool-49.jar

