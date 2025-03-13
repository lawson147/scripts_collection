if [ 'on'x = $1x ]; then
    git config --global https.proxy https://127.0.0.1:8890
    git config --global http.proxy http://127.0.0.1:8890
    echo -e "==============\nproxy on done\n=============="
    git config --global --list
elif [ 'off'x = $1x ]; then
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    echo -e "==============\nproxy off done\n=============="
    git config --global --list
else
    echo 'param "on/off" is required'
fi
