NET_PY=/home/lawsonzhang/scripts/network_access_v4.py
if [ -z $1 ]; then
	echo 'param is required'
	exit
elif [ '-l' = $1 ]; then
	python $NET_PY -l
	exit
elif [ '-s' = $1 ]; then
	python $NET_PY -s
	exit
elif [ '-o' = $1 ]; then
	echo 'logout ...'
	python $NET_PY --logout
	exit
elif [ '-p' = $1 ]; then
	echo 'login...'
	echo $NET_PY
	python ${NET_PY} B202374005 Shenz4@$2
fi

