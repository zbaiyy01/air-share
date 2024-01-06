  #!/bin/bash
echo 当前工作目录如下
pwd

ps -ef|grep 'java'|grep 'air-share'|grep 'air-share-0.0.1-SNAPSHOT.jar'|grep -v 'grep'|awk '{print $2}'|xargs -tI {} kill -9 {}

nohup /media/data/system/jdk/bin/java -Dfile.encoding=utf-8 -Duser.timezone=GMT+08 -jar /home/insite/app/air-share/air-share-0.0.1-SNAPSHOT.jar --spring.profiles.active=prod -Xmx1G -Xms1G -server -XX:+UseG1GC -XX:+HeapDumpOnOutOfMemoryError >>/home/insite/app/air-share/air-share.log  2>&1 &
