 <img width="480" height="480" alt="merged" src="https://github.com/user-attachments/assets/d955cdfa-66da-4a71-83b4-d87d9bd7e415" />



 
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
