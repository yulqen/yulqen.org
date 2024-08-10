push:
	hugo && rsync -rtvP public/ lemon@pachelbel:/var/www/yulqen.org/ --exclude='*.xcf' --exclude Makefile --exclude .git --exclude .htaccess --delete

pull:
	rsync -avzr lemon@pachelbel:/var/www/yulqen.org/ public/ --exclude Makefile --exclude .git --delete-excluded --delete
