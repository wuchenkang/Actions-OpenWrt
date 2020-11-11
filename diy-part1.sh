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
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-package' feeds.conf.default

# iputils
svn co https://github.com/Lienol/openwrt/trunk/package/network/utils/iputils package/network/utils/iputils

# New argon theme
rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# Adguard Home
svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome package/lean/luci-app-adguardhome

# Smart DNS
svn co  https://github.com/Lienol/openwrt-packages/trunk/net/smartdns package/lean/smartdns
svn co  https://github.com/Lienol/openwrt-luci/trunk/applications/luci-app-smartdns package/lean/luci-app-smartdns

# SYSU H3C
svn co https://github.com/wuchenkang/openwrt-sysuh3c/trunk/luci-app-sysuh3c package/lean/luci-app-sysuh3c
svn co https://github.com/wuchenkang/openwrt-sysuh3c/trunk/sysuh3c package/lean/sysuh3c
