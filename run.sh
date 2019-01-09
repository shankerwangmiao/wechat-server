#!/bin/bash
Xvnc -SecurityTypes none -rfbport 5900 $VNCOPTS :0 &
DISPLAY=:0 /opt/deepinwine/apps/Deepin-WeChat/run.sh
wait
