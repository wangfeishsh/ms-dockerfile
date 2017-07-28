#### Authentication and private Docker registry support

Since version 1.3.0, the plugin will automatically use any configuration in your ~/.dockercfg or ~/.docker/config.json file when pulling, pushing, or building images to private registries.

~~~
baochunyudeMacBook-Pro:~ baochunyu$ cat .docker/config.json 
{
	"auths": {
		"10.168.9.114:80": {},
		"https://index.docker.io/v1/": {}
	},
	"credsStore": "osxkeychain"
}
~~~

~~~
{
    "auths": {
	          "https://index.docker.io/v1/": {
		               "auth": "khsfdfhsjdskhlfhdlfjfjdj="
	          },
	          "https://registry-1.docker.io/v2/": {
		               "auth": "qlfldhflqshmfdhsdnferi="
	          }
       }
~~~

pom文件中的步骤注释掉，否则mvn clean package时候会执行docker build动作

    mvn clean package  dockerfile:build dockerfile:push



[spring-boot-docker](https://github.com/spring-guides/gs-spring-boot-docker)

添加ca证书
~~~
cd  /etc/docker
mkdir -p certs.d/registry02.yupaopao.cn
cd certs.d/registry02.yupaopao.cn
cp -a /root/cert/ca.crt .
~~~

Mac

    /Users/baochunyu/.docker/certs.d/registry02.yupaopao.cn