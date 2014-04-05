
export PATH := node_modules/.bin:$(PATH)

all:
	npm install
	bower install
	$(MAKE) scss

.PHONY: scss
scss:
	node-sass --include-path bower_components/foundation/scss --source-comments map  --source-map -o css/app.css scss/app.scss

scss-watch:
	node-sass --watch --include-path bower_components/foundation/scss --source-comments map  --source-map -o css/app.css scss/app.scss

commit-theme: scss
	git add css -f
	git commit css -m "Update assets"

watch:
	grunt

clean:
	rm -rf node_modules
	rm -rf bower_components
	rm -rf css
