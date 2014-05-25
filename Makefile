build:
	jekyll build

server:
	jekyll server --watch

deploy: build
	rsync -avz --delete _site/ vps:/var/www/halo3archives/htdocs/

.PHONY: build server production deploy
