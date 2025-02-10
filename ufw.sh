#!/bin/bash

# 更新软件包索引
sudo apt update -y

# 安装 UFW（如果尚未安装）
sudo apt install ufw -y

# 允许 TCP 端口 2022 和 6000
sudo ufw allow 2022/tcp
sudo ufw allow 6000/tcp

# 允许所有 UDP 端口
sudo ufw allow proto udp from any to any

# 启用 UFW 并设置开机自启
sudo ufw enable
sudo systemctl enable ufw

# 显示防火墙状态
sudo ufw status verbose

echo "UFW 安装并配置完成！"
