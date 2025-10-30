HOST := couples
HOLDING := yulqen_holding

# I have changed this script so that content is pushed to a holding directory on couples and then I rsync manually from there using:
# doas rsync -avzh /home/lemon/yulqen_holding/ /usr/local/bastille/jails/nginx/root/usr/local/www/static-sites/yulqen.org/public/

push:
	hugo && rsync -rtvP public/ lemon@$(HOST):'$(HOLDING)/' \
	  --exclude='*.xcf' --exclude Makefile --exclude .git --exclude .htaccess --delete

# push:
# 	hugo && rsync -rtvP public/ lemon@trevino:/home/lemon/containers/yulqen.org/public/ --exclude='*.xcf' --exclude Makefile --exclude .git --exclude .htaccess --delete


pull:
	rsync -avzr lemon@trevino:/home/lemon/containers/yulqen.org/public/ public/ --exclude Makefile --exclude .git --delete-excluded --delete
