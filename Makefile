BASEURL = /halo3archives.com/_site
URL = http://localhost/halo3archives.com/_site

build:
	jekyll --base-url $(BASEURL) --url $(URL)

auto:
	jekyll --auto --base-url $(BASEURL) --url $(URL)

production:
	jekyll --base-url //halo3archives.com --url http://halo3archives.com

deploy: production
	rsync -avz --delete _site/ vps:/var/www/temp/htdocs/

.PHONY: build production deploy auto
