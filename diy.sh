#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
git clone https://github.com/happyzhang1995/openwrt-adguardhome.git package/diy/openwrt-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/diy/luci-app-adguardhome
#git clone -b 19.07_stable https://github.com/jerrykuku/luci-theme-argon.git package/diy/
sed -i 's/192.168.1.1/192.168.2.22/g' package/base-files/files/bin/config_generate
./scripts/feeds update -a
./scripts/feeds install -a
