#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
cd package
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
git clone https://github.com/VPN-V2Ray/luci-theme-edge
git clone https://github.com/jerrykuku/luci-app-argon-config
git clone https://github.com/tindy2013/openwrt-subconverter
git clone https://github.com/tuanqing/install-program package/install-program
cd lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.gi
