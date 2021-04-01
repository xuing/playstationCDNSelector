# playstationCDNSelector
PSCDN测速小工具 可以协助解决NPS Browser、黑商店无法访问 亦或者是 官方商店无法访问，速度慢等问题。

## 前言
`playstation.net`使用国内的DNS无法查询出正确的IP地址,导致无法下载游戏、更新等。

可以通过在主机或者路由器上设置HOST进行缓解。

但CDN的IP繁多，无法快速找到好用的IP成为一个痛点，所以本工具的出现了。

## 原理说明
BAT脚本遍历cdn-list.txt内的所有CDN的IP，并设置临时对应关系，进行尝试性下载，并显示下载速度。
帮助快速选择速度快的CDN。


找到合适的CDN IP后，以178.79.242.0 为例，可增加如下的HOST规则。
~~~
178.79.242.0       ares.dl.playstation.net
178.79.242.0       zeus.dl.playstation.net
178.79.242.0       gs.ww.prod.dl.playstation.net
~~~


## 来源
脚本改编来自 LuckyStar@A9VG
