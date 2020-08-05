# Connecting to a remote host from Your Windows Machine

## 1) Download MobaXterm [here](https://mobaxterm.mobatek.net/download.html)

A) Click "Download Now" under "Home Edition"
<p align="center"> 
<img src="https://github.com/AndrewLangvt/Random_tidbits/blob/master/image_hosting/MobaXterm_0.PNG?raw=true" width="500" height="300" />
</p>

B) Click "MobaXterm Home Edition v20.3 (Portable edition)"
<p align="center"> 
<img src="https://github.com/AndrewLangvt/Random_tidbits/blob/master/image_hosting/MobaXterm_0.5.PNG?raw=true" width="500" height="300" />
</p>

#### Extract MobaXterm
A) Double click the `MobaXterm_Portable_v##.zip` folder and double click `MobaXterm_Portable_##.exe`. This will prompt you to select `Extract all`.
<p align="center"> 
<img src="https://github.com/AndrewLangvt/Random_tidbits/blob/master/image_hosting/MobaXterm_0.6.PNG?raw=true" width="500" height="300" />
</p>
B) Select the folder pathway where you would like to place MobaXterm
<p align="center"> 
<img src="https://github.com/AndrewLangvt/Random_tidbits/blob/master/image_hosting/MobaXterm_0.7.PNG?raw=true" width="500" height="300" />
</p>
  
#### You have successfully downloaded & extracted MobaXterm. You can now move the `.exe` file onto your Desktop to create a shortcut for future use. 
<p align="center"> 
<img src="https://github.com/AndrewLangvt/Random_tidbits/blob/master/image_hosting/MobaXterm_0.8.PNG?raw=true" width="500" height="300" />
</p>

NOTE: when selecting location for extraction, it doesn't really matter where you place it on your local machine. I like to place portable executables (which this is) on my Desktop so I can easily remove them entirely, if desired. 

## 2) Establish a new session

### A. Open MobaXterm & select "Session"
<p align="center"> 
<img src="https://github.com/AndrewLangvt/Random_tidbits/blob/master/image_hosting/MobaXterm_1.PNG?raw=true" width="700" height="400" />
</p>

### B. Select "SSH" and "Advanced SSH settings"
<p align="center"> 
<img src="https://github.com/AndrewLangvt/Random_tidbits/blob/master/image_hosting/MobaXterm_2.PNG?raw=true" width="700" height="400" />
</p>

### C. SSH Setup
  1) Input remote hostname or IP address
  2) Check "Specify username" and input your username
  3) Ensure "X11-Forwarding" is checked and your "Remote environment" is set to `Interactive shell`
<p align="center"> 
<img src="https://github.com/AndrewLangvt/Random_tidbits/blob/master/image_hosting/MobaXterm_3.PNG?raw=true" width="700" height="400" />
</p>

### D. Command line prompt
<p align="center"> 
<img src="https://github.com/AndrewLangvt/Random_tidbits/blob/master/image_hosting/MobaXterm_4.PNG?raw=true" width="700" height="400" />
</p>

  - NAVIGATION: move about your remote machine either via CLI commands (`cd`, `ls`, `cp`) or by using the folder directory on the left side of MobaXterm
  - FILE TRANSFER: copy files to/from your local machine by dragging & dropping the file to/from the folder directory on the left side of MobaXterm
  - START GUI APPLICATIONS
    - CLC Genomics Workbench 20: `clcgenomicswb20`
    - run Figtree: `figtree_run`
    - open a basic text editor: `gedit`
  - COPY/PASTE TEXT - no, you can't use `ctrl` `c` or `ctrl` `v`
    - When you highlight anything in the terminal, it is automatically held on the clipboard to be pasted 
          (`ctrl` + `c` will kill any running processes instead- not what you want)
    - to paste into the terminal window, you simply right click and select paste (MobaXterm allows you to press `shift` + `insert` by default)

## 3. Your next session
The next time you open MobaXterm, you'll see your saved sessions on the left-hand side. Double click the desired session and it will automatically open your remote connection.
<p align="center"> 
<img src="https://github.com/AndrewLangvt/Random_tidbits/blob/master/image_hosting/MobaXterm_5.PNG?raw=true" width="700" height="400" />
</p>
