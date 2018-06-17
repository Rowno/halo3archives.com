build:
	bundle exec jekyll build
.PHONY: build

server:
	bundle exec jekyll server --watch
.PHONY: server

deploy: build
	rsync -avzh --delete --no-perms --no-owner --no-group _site/* vps:/var/www/halo3archives.com/files/
.PHONY: deploy
