push:
	hugo && rsync -rtvP public/ lemon@trevino:/home/lemon/containers/yulqen.org/public/ --exclude='*.xcf' --exclude Makefile --exclude .git --exclude .htaccess --delete

pull:
	rsync -avzr lemon@trevino:/home/lemon/containers/yulqen.org/public/ public/ --exclude Makefile --exclude .git --delete-excluded --delete
