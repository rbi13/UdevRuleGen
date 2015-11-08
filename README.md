## Udev Rules 

find vendorID productID (vid:pid)
```
lsusb
```

register rule and run script
```
sudo nano /etc/udev/rules.d/85-rule.rules

ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="@vid", ATTR{idProduct}=="@pid", RUN+="@action"
```

reload rules
```
sudo service udev restart
```
# hp hard drive
# NTFS ~ Use ntfs-3g for write access (rw)
UUID=E4904EE6904EBEB4  /media/hpdrive  ntfs-3g  auto,users,utf8,nobootwait  0  0


