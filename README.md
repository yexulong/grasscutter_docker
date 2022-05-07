# grasscutter_docker

参考教程：  
https://blog.tomys.top/2022-04/GenshinTJ/

docker-compose环境搞定后，下载full-grasscutter-dev-372_TomyJan.7z执行run.sh

执行完后会多一个full-grasscutter-dev-372_TomyJan文件夹

然后进入full-grasscutter-dev-372_TomyJan文件夹，按照自己的需求修改config.json、proxy_config.py

config.json:

`DatabaseUrl`、`GameServer.DispatchServerDatabaseUrl` 修改为: mongodb://grasscutter_mongo:27017

`GameServer.PublicIp` 修改为docker主机的ip

`DispatchServer.PublicIp` 修改为：dispatchcnglobal.yuanshen.com

proxy_config.py:

`REMOTE_HOST` 修改为 grasscutter_web容器的ip。（可以通过docker inspect查看）


Q&A

Q: 新增账号？

A: 可以通过`docker attach`进入控制台，输入`account create XXX`命令，退出按ctrl+p+q
