install:
	bundle install

build: clean install
	bundle exec jekyll build

dev: build
	bundle exec jekyll serve --livereload --open-url --port 4000 --livereload-port 35729

test: install
	cd azure_function_apps/ContactFormHttpTrigger && poetry run python -m unittest discover

clean:
	rm -rf ./_site
