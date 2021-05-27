.PHONY: build run

build:
	docker build -t loeschcke-image .

run:
	docker run -d -p 80:80 --name loeschcke loeschcke-image
