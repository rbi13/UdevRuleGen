#!/bin/bash

echo "syncHpDriveAction executed" >> /home/lorie/actions.log
mount -a
rsync -av /home/lorie/ /media/hpdrive/linuxbkp/ >> /home/lorie/actions.log 2>&1
