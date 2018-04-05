sudo apt-get update
sudo apt-get install samba

echo "[share]
path = /home/$USER
public = yes
writable = yes
valid users = $USER
create mask = 0644
force create mode = 0644
directory mask = 0755
force directory mode = 0755
available = yes">>/etc/samba/smb.conf

sudo touch /etc/samba/smbpasswd

111111 | sudo smbpasswd -a "$USER"

sudo /etc/init.d/samba restart