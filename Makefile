build:
	jekyll build

server:
	jekyll server --watch

deploy: build
	rsync -avzh --delete --no-perms --no-owner --no-group _site/* vps:/var/www/halo3archives.com/files/

.PHONY: build server production deploy
