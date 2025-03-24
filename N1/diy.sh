#!/bin/bash

# Add packages

git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
git clone https://github.com/xiaorouji/openwrt-passwall --depth=1 clone/passwall
git clone https://github.com/vernesong/OpenClash.git --depth=1 clone/openclash
git clone https://github.com/sbwml/luci-app-mosdns.git --depth=1 clone/mosdns
git clone https://github.com/kenzok8/openwrt-packages.git --depth=1 clone/kenzok8-openwrt-packages


# Update packages
rm -rf feeds/luci/applications/luci-app-passwall
cp -rf clone/amlogic/luci-app-amlogic clone/passwall/luci-app-passwall feeds/luci/applications/
cp -rf clone/openclash/luci-app-openclash feeds/luci/applications/
cp -rf clone/mosdns/luci-app-mosdns feeds/luci/applications/
cp -rf clone/kenzok8-openwrt-packages/luci-app-adguardhome feeds/luci/applications/



# Clean packages
rm -rf clone
