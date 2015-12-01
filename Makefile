demo: clean build run

build: Dockerfile
	docker build -t dalmait/go-http-hi .

run:
	docker run --publish 8080:8080 --name gohttphi -d dalmait/go-http-hi
	@docker ps
	@echo "Please test with your browser!"

clean:
	@docker ps | grep gohttphi && docker stop gohttphi || echo "Container seems already stopped."
	@docker ps -a | grep gohttphi && docker rm gohttphi || echo "Container seems already deleted."
	@docker images | grep dalmait/go-http-hi && docker rmi dalmait/go-http-hi || echo "Not found docker image"