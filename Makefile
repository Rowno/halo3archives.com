vendor:
	bundle install

build: vendor
	bundle exec jekyll build
.PHONY: build

server: vendor
	bundle exec jekyll server --watch
.PHONY: server
