#!/bin/bash
/home/cjd/Nextcloud/Apps/bin/bw.bin config server https://home.adebenham.com/
export BW_SESSION=`bw.bin login chris@adebenham.com --raw`
git push https://cjd:`bw.bin get password "github cli"`@github.com/cjd/homeassistant.git
bw.bin logout
