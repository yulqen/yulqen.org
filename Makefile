push:
	rsync -avzr public/ lemon@joannalemon.com:/var/www/yulqen.org/ --exclude Makefile --exclude .git --delete-excluded --delete
