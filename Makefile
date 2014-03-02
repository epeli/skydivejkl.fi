
export PATH := node_modules/.bin:$(PATH)

all:
	npm install
	bower install
	$(MAKE) scss

.PHONY: scss
scss:
	grunt sass

commit-theme: scss
	git add css
	git commit css -m "Update assets"

watch:
	grunt

clean:
	rm -rf node_modules
	rm -rf bower_components
	rm -rf css
