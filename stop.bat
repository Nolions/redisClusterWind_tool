@echo off

echo Stopping Redis servers...

echo Stopping Redis server on port 6379...
.\Redis1\redis-cli.exe -p 6379 shutdown

echo Stopping Redis server on port 7002...
.\Redis2\redis-cli.exe -p 7002 shutdown

echo Stopping Redis server on port 7003...
.\Redis3\redis-cli.exe -p 7003 shutdown

echo Stopping Redis server on port 7004...
.\Redis4\redis-cli.exe -p 7004 shutdown

echo Stopping Redis server on port 7005...
.\Redis5\redis-cli.exe -p 7005 shutdown

echo Stopping Redis server on port 7006...
.\Redis6\redis-cli.exe -p 7006 shutdown

echo All Redis servers have been stopped.
pause
