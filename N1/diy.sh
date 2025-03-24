#!/bin/bash

# Add packages

git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
git clone https://github.com/xiaorouji/openwrt-passwall --depth=1 clone/passwall
git clone https://github.com/vernesong/OpenClash.git --depth=1 clone/openclash
git clone https://github.com/kenzok8/openwrt-packages.git --depth=1 clone/kenzok8-openwrt-packages

# 拉取 mosdns 和 v2ray-geodata 到 clone 目录

git clone https://github.com/sbwml/luci-app-mosdns --depth=1 -b v5 clone/luci-app-mosdns
git clone https://github.com/sbwml/v2ray-geodata --depth=1 clone/v2ray-geodata

# Update packages
rm -rf feeds/luci/applications/luci-app-passwall
cp -rf clone/amlogic/luci-app-amlogic clone/passwall/luci-app-passwall feeds/luci/applications/
cp -rf clone/openclash/luci-app-openclash feeds/luci/applications/
cp -rf clone/kenzok8-openwrt-packages/luci-app-adguardhome feeds/luci/applications/

# 把 mosdns 和 v2ray-geodata 复制到 package
cp -rf clone/luci-app-mosdns package/
cp -rf clone/v2ray-geodata package/

# Clean packages
rm -rf clone
