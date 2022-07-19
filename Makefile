push:
	hugo && rsync -avzr public/ lemon@joannalemon.com:/var/www/yulqen.org/ --exclude Makefile --exclude .git --delete-excluded --delete

pull:
	rsync -avzr lemon@joannalemon.com:/var/www/yulqen.org/ public/ --exclude Makefile --exclude .git --delete-excluded --delete
