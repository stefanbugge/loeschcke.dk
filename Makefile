.PHONY: build run load_and_run

build:
	docker build -t loeschcke-image .

run:
	docker run -d -p 80:80 --name loeschcke loeschcke-image

load_and_run:
	docker load < loeschcke-image.tar.gz
	docker-compose up --build -d

#run-server:
#	docker run -d --name loeschcke --expose 80 --net nginx-proxy -e VIRTUAL_HOST=loeschcke.dk loeschcke-image
