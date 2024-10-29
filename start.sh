#!/bin/bash

echo "启动 Jupyter Lab..."
rm -rf /root/.jupyter
jupyter lab --generate-config
echo  "c.ServerApp.token = 'Zeyun1234'" >> /root/.jupyter/jupyter_lab_config.py
echo "c.ServerApp.allow_origin = '*'" >> /root/.jupyter/jupyter_lab_config.py
echo "c.MultiKernelManager.default_kernel_name = 'bash'" >> /root/.jupyter/jupyter_lab_config.py
mkdir -p "/root/.jupyter/lab/user-settings/\@jupyterlab/translation-extension"
echo '{"locale": "zh_CN"}' >> "/root/.jupyter/lab/user-settings/\@jupyterlab/translation-extension/plugin.jupyterlab-settings"
nohup jupyter lab --allow-root --ip 0.0.0.0 --port 8888 --no-browser &

if [ -d "/webos" ]; then
    echo "Directory /webos exists. Executing restart script..."
    cd /webos/api && bash ./restart.sh &
else
    echo "Directory /webos does not exist. Skipping execution."
fi

# 在下列空白处添加需要执行的内容




#

tail -f
