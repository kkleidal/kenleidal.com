.PHONY: all serve

all: public

serve: hugo/hugo
	hugo/hugo serve -D

hugo/hugo:
	mkdir -p hugo
	curl -L https://github.com/gohugoio/hugo/releases/download/v0.32.4/hugo_0.32.4_Linux-64bit.tar.gz | tar xvz -C hugo

public: hugo/hugo
	hugo/hugo
