#=================================================
# https://github.com/sidpixel/lede
# Description: Build OpenWrt using GitHub Actions
# Lisence: MIT
# Author: sidpixel
#=================================================

# Modify default IP
sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate
# 删除老argon
#rm -rf package/lean/luci-theme-argon
# 拉取argon主题
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# 拉取微信推送插件
git clone https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot
# 拉取oaf流控插件
git clone https://github.com/destan19/OpenAppFilter/tree/master/luci-app-oaf  package/luci-app-oaf

#定义时间变量
echo "FILE_DATE=$(date +%Y%m%d%H%M)" >>"$GITHUB_ENV"
