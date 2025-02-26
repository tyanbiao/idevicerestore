#!/bin/bash
# DFUKIT_SERVICE="/etc/systemd/system/dfukit.service"


# # 创建 systemd 服务
# cat > $DFUKIT_SERVICE << EOL
# [Unit]
# Description=DFUKit Service
# Before=multi-user.target
# After=network.target

# [Service]
# Type=oneshot
# ExecStart=/usr/local/bin/dfukit
# RemainAfterExit=yes

# [Install]
# WantedBy=multi-user.target
# EOL

# # 启用服务
# systemctl enable dfukit.service

# 在 /etc/profile.d/ 添加启动检查脚本
cat > /etc/profile.d/dfukit.sh << EOL
#!/bin/bash

# 如果不是 TTY 登录则退出
[ -t 0 ] || exit 0

# 检查 license 状态
/usr/local/bin/dfukit
EOL

chmod +x /etc/profile.d/dfukit.sh