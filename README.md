<img width="1361" height="765" alt="dock" src="https://github.com/user-attachments/assets/32bdc65d-dd46-4f01-8089-ec14d684ca24" /># blue-custom-nwg-dock
dock.png!


 
It is a bash based script which use SOCAT to enable nwg-dock-hyprland to auto hide only when a window is active by reading workspace activity


git clone "the repo url" 

 #yay -S socat
 
 #yay -S nwg-dock-hyprland
 
 copy path of the script file inside the folder,ending with .sh 
 
 edit userpref.conf in ./conf/hypr
 
 add exec-once = "paste the script file"
 
 save

 in terminal
 
 chmod +x "script file path"
 
 test the script by directly apply the file to terminal
 
 reboot or logout 
