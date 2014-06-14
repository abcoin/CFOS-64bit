CFOS.WIN8
=========

Crypto Financial Operating System for 64bit Windows 8, if you are using other windows OS, please find it under https://github.com/abcoin:w

Please follow the steps below:

Step 0). For first time Run "ABC.Service.exe" after download, you will be prompted with password.

Step 1). Run "ABC.Service.exe -reindex".

Step 2). You will be notified with username and password with error message for the first time.

Step 3). Edit ABC.Service.exe.xml with right password:

    <add key="username" value="abcoinrpc"/>
    <add key="password" value="8PnwWUngNqJYq74VQaXV37vfQvfnQW7CxnVcFuGSNhvb"/>

Step 4). run  "ABC.Service.exe"


To Stop "ABC.Service.exe", start a new Prompt Window and type ""ABC.Service.exe stop"
