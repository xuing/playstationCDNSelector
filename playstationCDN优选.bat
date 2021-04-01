@echo off
CHCP 65001

cls
color 06

set SERVERLIST=cdn-list.txt
set HOST=zeus.dl.playstation.net
set URL=/cdn/HP2005/PCSH10297_00/HP2005-PCSH10297_00-BREEDERHOMEGROWN_bg_1_fdcbdaf170675b8d6398906ee630c867540ceb65.pkg

echo ☆ ChinaNetCenter CDN SpeedTest Tool Made Xuing、LuckyStar@A9VG ☆
echo.
echo.
echo 测试已知的PlayStation节点...
for /F %%i in (%SERVERLIST%) do (
echo 开始测试%%i
REM -s表示Silent mode || -o nul 不写入到任何地方 || -m 限制传输的最长时间(测速的运行时间)
REM -Y speed-limit <speed> Stop transfers slower than this || -y speed-time <seconds> Trigger 'speed-limit' abort after this time
.\curl -s -o nul -m 5 -Y 204800 -y 3 --url http://%%i%URL% -H "Host: %HOST%" -w "# %%{remote_ip} download speed is %%{speed_download}B/s\n"
)
echo ☆ 测试完毕，请选择速度最高的IP替换 ☆
pause
color
echo on