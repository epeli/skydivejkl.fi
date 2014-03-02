
export PATH := node_modules/.bin:$(PATH)

all:
	npm install
	$(MAKE) scss

scss:
	grunt

watch:
	grunt

deploy-lakka: scss
	rsync -Pah \
		--exclude '.git' \
		--exclude 'node_modules' \
		--delete \
		../../ lakka:suuronen.org/jlk

deploy: scss
	rsync -Pah \
		--exclude '.git' \
		--exclude 'node_modules' \
		../../ jlk:pico
