start:
	docker-compose up -d mkdocs

build:
	docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build

deploy:
	docker-compose exec mkdocs gh-deploy

logs:
	docker-compose logs mkdocs

page:
	curl 'https://jaspervdj.be/lorem-markdownum/markdown.txt' > docs/${name}.md