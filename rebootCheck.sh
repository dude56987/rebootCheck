check=$(cat /etc/rebootCheck.cfg)
# if a webpages is used in config file
if echo $check | grep -c "www.";then
	if ping -c 1 $check;then
		echo 'Still connected :D'
	else
		reboot
	fi
else
	# if a file is give in config file
	if [ -f $check ];then
		rm $check
		reboot
	else
		echo 'File flag does not exist ^_^'
	fi
fi
