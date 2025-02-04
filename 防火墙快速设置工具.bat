@echo off

:MENU
cls
echo.
echo *请注意，此脚本必须以管理员身份运行！
echo.
echo 请选择一个操作：
echo.
echo 0. 退出
echo 1. 关闭防火墙功能
echo 2. 开启防火墙功能
echo 3. 查询防火墙状态
echo 4. 查询防火墙配置
echo.
set /p choice=请输入您选择的操作所对应的数字：
if %choice%==0 goto exit
if %choice%==1 goto TURN_OFF
if %choice%==2 goto TURN_ON
if %choice%==3 goto CHECK_STATUS
if %choice%==4 goto CHECK_FUNCTION
if %choice%==4 goto CHECK_FUNCTION
echo 输入无效，请输入0到4之间的数字
goto MENU

:TURN_OFF
netsh advfirewall set allprofiles state off
echo 防火墙功能已成功关闭
echo 请按回车键以返回菜单
pause
goto MENU

:TURN_ON
netsh advfirewall set allprofiles state on
echo 防火墙功能已成功开启
echo 请按回车键以返回菜单
pause
goto MENU

:CHECK_STATUS
netsh advfirewall show allprofiles state
echo 防火墙状态已成功显示
echo 请按回车键以返回菜单
pause
goto MENU

:CHECK_FUNCTION
netsh firewall show config
echo 防火墙配置已成功显示
echo 请按回车键以返回菜单
pause
goto MENU
