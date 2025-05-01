common:
	@if [ ! -d ./vendor ]; then bundle install; fi

all: common
	bundle exec jekyll build

serve: common
	bundle exec jekyll serve
