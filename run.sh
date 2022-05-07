# !/bin/bash
# -*- coding:utf-8 -*-

apt-get install -y p7zip

7za x full-grasscutter-dev-372_TomyJan.7z

docker-compose -f genimpact-docker-compose.yml up -d --build
