<img width="1366" height="763" alt="dock-hidden" src="https://github.com/user-attachments/assets/1f7f9956-05dc-46e0-8f70-2c26feb0039d" />
<img width="1361" height="765" alt="dock" src="https://github.com/user-attachments/assets/65a30821-54a2-40ce-b3a6-ae339ab28d2e" />




 
# blue-custom-nwg-dock
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
