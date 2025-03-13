DEFAULT_HOST=192.168.1.63
DEFAULT_PORT=7890

set -x

if [ 'on'x = $1x ]; then
    git config --global https.proxy https://${DEFAULT_HOST}:${DEFAULT_PORT}
    git config --global http.proxy http://${DEFAULT_HOST}:${DEFAULT_PORT}
elif [ 'off'x = $1x ]; then
    git config --global --unset http.proxy
    git config --global --unset https.proxy
else
    echo '"on/off" parameter is required'
fi
