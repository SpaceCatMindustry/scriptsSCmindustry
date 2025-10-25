#!/bin/bash

screen -S mindAI -dm bash -c "cd /root/mindAI && java -jar server-release.jar"
sleep 1
screen -S mindAI -X stuff "host\n"

screen -S mindNoTurret -dm bash -c "cd /root/mindNoTurret && java -jar server-release.jar"
sleep 1
screen -S mindNoTurret -X stuff "host\n"

screen -S mindSurv -dm bash -c "cd /root/mindSurv && java -jar server-release.jar"
sleep 1
screen -S mindSurv -X stuff "host\n"

screen -S mindZeroHit -dm bash -c "cd /root/mindZeroHit && java -jar server-release.jar"
sleep 1
screen -S mindZeroHit -X stuff "host\n"

screen -ls
