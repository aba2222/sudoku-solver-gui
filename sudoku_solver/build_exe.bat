@echo off
REM ���뵱ǰ������ű�����Ŀ¼
cd /d %~dp0

REM ���� PyQt5 ���·�������������滻Ϊ���ʵ��·��
set QT_PLUGIN_PATH=C:\Users\��\AppData\Local\Programs\Python\Python38\Lib\site-packages\PyQt5\Qt\plugins

REM ɾ���ɵ� dist �� build Ŀ¼��������ڣ�
if exist dist (
    echo ɾ���ɵ� dist Ŀ¼...
    rmdir /s /q dist
)
if exist build (
    echo ɾ���ɵ� build Ŀ¼...
    rmdir /s /q build
)
if exist sudoku_solver.spec (
    echo ɾ���ɵ� spec �ļ�...
    del sudoku_solver.spec
)

REM ʹ�� PyInstaller ���Ϊ���ļ� exe��ȥ����̨���ڣ�����Ϊ sudoku_solver.exe
echo ��ʼ���...
pyinstaller --noconsole --onefile --name sudoku_solver main.py

echo.
echo �����ɣ���ִ���ļ�λ�� dist Ŀ¼�£�dist\sudoku_solver.exe
pause
