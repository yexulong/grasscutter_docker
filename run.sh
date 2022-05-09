# !/bin/bash
# -*- coding:utf-8 -*-

set -eux

sudo apt-get install -y p7zip-full

sudo 7za x full-grasscutter-dev-372_TomyJan.7z -pblog.tomys.top

docker-compose -f genimpact-docker-compose.yml up -d --build
