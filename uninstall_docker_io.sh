#!/bin/bash

# 停止 Docker 服务
echo "停止 Docker 服务..."
sudo systemctl stop docker

# 卸载 Docker 相关软件包
echo "卸载 Docker 相关软件包..."
sudo apt-get purge -y docker docker.io containerd runc

# 删除 Docker 数据和配置文件
echo "删除 Docker 数据和配置文件..."
sudo rm -rf /var/lib/docker /var/lib/containerd /etc/docker /var/run/docker.sock ~/.docker

# 删除 Docker 用户组（如果存在）
echo "删除 Docker 用户组..."
sudo groupdel docker || true

# 清理系统包索引
echo "清理系统包索引..."
sudo apt-get autoremove -y
sudo apt-get autoclean

# 验证 Docker 是否已完全卸载
echo "验证 Docker 是否已完全卸载..."
if ! command -v docker &> /dev/null; then
    echo "Docker 已成功卸载！"
else
    echo "Docker 未完全卸载，请检查系统中是否有残留文件。"
fi
