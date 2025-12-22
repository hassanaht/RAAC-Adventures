@echo off
title RAAC Adventures Bot by @MeoMunDep
color 0A

cd %~dp0

echo Checking for bot updates...
git pull origin main > nul 2>&1
echo Bot updated!

echo Checking configuration files...

if not exist configs.json (
    echo {> configs.json
    echo   "proxy_mode": "round",>> configs.json
    echo   "rotate_proxy": false,>> configs.json
    echo   "skip_invalid_proxy": true,>> configs.json
    echo   "proxy_rotation_interval": 2,>> configs.json
    echo   "delay_each_account": [1, 1],>> configs.json
    echo   "time_to_restart_all_accounts": 300,>> configs.json
    echo   "how_many_accounts_run_in_one_time": 1,>> configs.json
    echo   "do_tasks": true,>> configs.json
    echo   "play_games": {>> configs.json
    echo     "enabled": true,>> configs.json
    echo     "count": 5>> configs.json
    echo   }>> configs.json
    echo }>> configs.json
    echo Created configs.json.
)


(for %%F in (datas.txt proxies.txt) do (
    if not exist %%F (
        type nul > %%F
        echo Created %%F
    )
))

echo Configuration files checked.

echo Checking dependencies...
if exist "..\node_modules" (
    echo Using node_modules from parent directory...
    cd ..
    CALL npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger 
    cd %~dp0
) else (
    echo Installing dependencies in current directory...
    CALL npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger 
)
echo Dependencies installation completed!

echo Starting the bot...
node meomundep

pause
exit
