#!/bin/bash
echo         建立临时目录/tmp/flash_download
mkdir         /tmp/flash_download
rm         /tmp/flash_download/*
echo         进入目录/tmp/flash_download
cd         /tmp/flash_download
echo         正在从https://www.flash.cn/flashplayer/3000113/下载install_flash_player_ppapi_cn.exe
wget         https://www.flash.cn/flashplayer/3000113/install_flash_player_ppapi_cn.exe
echo         文件下载完成，正在初始化安装环境
export         WINEPREFIX=~/.deepinwine/Deepin-TIM
echo         正在安装install_flash_player_ppapi_cn.exe到~/.deepinwine/Deepin-TIM
deepin-wine install_flash_player_ppapi_cn.exe
echo         删除下载文件及目录
rm         /tmp/flash_download/*
rmdir         /tmp/flash_download
echo         安装结束
