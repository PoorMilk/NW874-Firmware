#!/bin/bash

# 1. 修改默认后台 IP 为 192.168.10.1 (可根据自身需求修改)
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 修改默认主机名
sed -i 's/ImmortalWrt/360T7-Router/g' package/base-files/files/bin/config_generate

# 3. 添加第三方插件 (示例：添加 OpenClash / Argon 主题)
# git clone --depth=1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash
# git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# 重新更新 feeds 以确保新引入的插件可被找到
./scripts/feeds update -i
./scripts/feeds install -a
