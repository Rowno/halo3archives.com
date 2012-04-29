BASEURL = /halo3archives.com/_site

build:
	jekyll --base-url $(BASEURL)

auto:
	jekyll --auto --base-url $(BASEURL)

production:
	jekyll

deploy: production
	rsync -avz --delete _site/ vps:/var/www/halo3archives/htdocs/

.PHONY: build production deploy auto
