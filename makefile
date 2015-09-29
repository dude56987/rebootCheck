install:
	sudo cp rebootCheck.sh /usr/bin/rebootCheck
	sudo chmod +x /usr/bin/rebootCheck
	sudo chown root /usr/bin/rebootCheck
	# copy default config
	sudo cp rebootCheck.cfg /etc/rebootCheck.cfg
	# add cron entry
	sudo cp cron /etc/cron.d/rebootCheck
