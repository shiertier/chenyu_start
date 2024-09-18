#!/bin/bash
echo "启动 Jupyter Lab..."
rm -rf /root/.jupyter
jupyter lab --generate-config
echo  "c.ServerApp.token = 'Zeyun1234'" >> /root/.jupyter/jupyter_lab_config.py
echo "c.ServerApp.allow_origin = '*'" >> /root/.jupyter/jupyter_lab_config.py
nohup jupyter lab --allow-root --ip 0.0.0.0 --port 8888 --no-browser &
cd /webos/api && bash ./restart.sh &

# 在下列空白处添加需要执行的内容




#

tail -f
