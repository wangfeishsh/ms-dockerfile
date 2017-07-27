#!/bin/sh
IP=$1
PROJECT=$2
VERSION=$3

echo "############git new code....#############"
cd /opt/scripts/Dockerfile/resin/webapps
git pull git@code.gzlife.cn:chenminghui/cmhtest.git

echo "#################build new images and push to private registry###########"
docker build -t registry.cmh.cn/test:${VERSION} /opt/scripts/Dockerfile/resin
docker push registry.cmh.cn/test:${VERSION}

echo "###########download new images and start new version of project##########"
ssh $IP "docker pull registry.cmh.cn/test:${VERSION}"
CONTAINER=`ssh $IP "docker ps | grep ${PROJECT}" | awk '{print $1}'`
ssh $IP "docker stop ${CONTAINER}"
ssh $IP "docker run -idt --name=${PROJECT}_${VERSION} -p 8080:8080 registry.cmh.cn/test:${VERSION}"