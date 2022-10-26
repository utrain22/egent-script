#!/bin/bash

# Author:Betty

# Date: 10/25/22

# This script is just to install packages in the linux machine"

yum install wget -y

if [$? -eq 0]

then
      echo "wget successfully installed"

else

      echo "wget failed to install, please check and run it again"
fi

yum install net-utils -y
yum install sysstat -y
yum install finger -y
yum install gcc -y
yum install  make -y
yum install python3 -y
yum install epel-release -y
yum install  git -y
yum install vim -y

echo "All packages installed successfully"
