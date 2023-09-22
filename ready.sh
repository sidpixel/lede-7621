#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 拉取微信推送插件
git clone https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot
# 拉取oaf流控插件
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
#拉取passwall,openclash
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
echo "src-git openclash https://github.com/vernesong/OpenClash.git;master" >> "feeds.conf.default"


#定义时间变量
echo "FILE_DATE=$(date +%Y%m%d%H%M)" >>"$GITHUB_ENV"


# 删除老argon
#rm -rf package/lean/luci-theme-argon
# 拉取argon主题
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# 拉取微信推送、京东签到插件
#git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan
#git clone https://github.com/jerrykuku/node-request.git package/lean/node-request
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus

