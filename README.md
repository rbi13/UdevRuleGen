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
