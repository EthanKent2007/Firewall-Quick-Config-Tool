@echo off

:MENU
cls
echo.
echo *��ע�⣬�˽ű������Թ���Ա������У�
echo.
echo ��ѡ��һ��������
echo.
echo 0. �˳�
echo 1. �رշ���ǽ����
echo 2. ��������ǽ����
echo 3. ��ѯ����ǽ״̬
echo 4. ��ѯ����ǽ����
echo.
set /p choice=��������ѡ��Ĳ�������Ӧ�����֣�
if %choice%==0 goto exit
if %choice%==1 goto TURN_OFF
if %choice%==2 goto TURN_ON
if %choice%==3 goto CHECK_STATUS
if %choice%==4 goto CHECK_FUNCTION
if %choice%==4 goto CHECK_FUNCTION
echo ������Ч��������0��4֮�������
goto MENU

:TURN_OFF
netsh advfirewall set allprofiles state off
echo ����ǽ�����ѳɹ��ر�
echo �밴�س����Է��ز˵�
pause
goto MENU

:TURN_ON
netsh advfirewall set allprofiles state on
echo ����ǽ�����ѳɹ�����
echo �밴�س����Է��ز˵�
pause
goto MENU

:CHECK_STATUS
netsh advfirewall show allprofiles state
echo ����ǽ״̬�ѳɹ���ʾ
echo �밴�س����Է��ز˵�
pause
goto MENU

:CHECK_FUNCTION
netsh firewall show config
echo ����ǽ�����ѳɹ���ʾ
echo �밴�س����Է��ز˵�
pause
goto MENU
