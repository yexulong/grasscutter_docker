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

A: 可以通过先修改config.json的`DispatchServer.Port`为443之外的端口，然后依次运行`docker exec -it grasscutter_web bash`, `java -jar grasscutter.jar`, 然后在出来的控制台里输入`account create XXX`。目前暂没有找到更好的办法，不知道为啥`docker attch`进入的控制台对输入的命令没有反应。
