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

mvn dockerfile:build


[spring-boot-docker](https://github.com/spring-guides/gs-spring-boot-docker)