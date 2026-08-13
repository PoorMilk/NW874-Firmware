#!/bin/bash
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 1. 修改默认后台 IP（如果你习惯 192.168.1.1 可以不改）
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# 2. 修改默认主机名称
sed -i 's/ImmortalWrt/NW874-360T7/g' package/base-files/files/bin/config_generate
