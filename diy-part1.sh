#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i 's/192.168.1.1/10.1.1.1/g' /home/runner/work/Actions-OpenWrt/Actions-OpenWrt/openwrt/package/base-files/files/bin/config_generate
sed -i 's/192.168./10.1./g' /home/runner/work/Actions-OpenWrt/Actions-OpenWrt/openwrt/package/base-files/files/bin/config_generate
git clone https://github.com/srchack/custom-packages package/custom-packages
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/kenzok8/openwrt-packages package/openwrt-packages
git clone https://github.com/fw876/helloworld package/helloworld
#svn co https://github.com/kenzok8/small/trunk/brook package/brook 
#svn co https://github.com/kenzok8/small/trunk/chinadns-ng package/chinadns-ng
#svn co https://github.com/kenzok8/small/trunk/simple-obfs package/simple-obfs
#svn co https://github.com/kenzok8/small/trunk/tcping package/tcping
