@echo off

echo Starting Redis servers...
start /b cmd /c ".\Redis1\redis-server.exe .\Redis1\redis.windows.conf" > redis1.log 2>&1
start /b cmd /c ".\Redis2\redis-server.exe .\Redis2\redis.windows.conf" > redis2.log 2>&1
start /b cmd /c ".\Redis3\redis-server.exe .\Redis3\redis.windows.conf" > redis3.log 2>&1
start /b cmd /c ".\Redis4\redis-server.exe .\Redis4\redis.windows.conf" > redis4.log 2>&1
start /b cmd /c ".\Redis5\redis-server.exe .\Redis5\redis.windows.conf" > redis5.log 2>&1
start /b cmd /c ".\Redis6\redis-server.exe .\Redis6\redis.windows.conf" > redis6.log 2>&1

echo Waiting for servers to start...
timeout /t 10 /nobreak

echo Creating Redis cluster...
.\Redis1\redis-cli.exe --cluster create 127.0.0.1:6379 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005 127.0.0.1:7006 --cluster-replicas 1

echo Redis cluster setup complete.
pause
