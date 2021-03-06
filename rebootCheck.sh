check=$(cat /etc/rebootCheck.cfg)
# if a webpages is used in config file
if echo $check | grep -c "www.";then
	# if webpage can not be reached reboot
	if ping -c 1 $check;then
		echo 'Still connected :D'
	else
		/sbin/reboot
	fi
else
	# if file path exists then remove the file and reboot
	if [ -f $check ];then
		rm $check
		/sbin/reboot
	else
		echo 'File flag does not exist ^_^'
	fi
fi
