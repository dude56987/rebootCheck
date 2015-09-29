if ping -c 1 $(cat /etc/rebootCheck.cfg);then
	echo 'Still connected :D'
else
	reboot
fi
