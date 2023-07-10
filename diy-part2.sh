#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#临时措施
sed -i 's#fs/cifs#fs/smb/client#g' package/kernel/linux/modules/fs.mk
sed -i 's#fs/ksmbd#fs/smb/server#g' package/kernel/linux/modules/fs.mk
sed -i 's#fs/smbfs_common#fs/smb/common#g' package/kernel/linux/modules/fs.mk