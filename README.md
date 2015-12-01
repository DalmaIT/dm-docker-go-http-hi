# dm-docker-go-http-hi
============

**A DalmaIT Docker project to demo docker with golang hello world http service.**


# About this project
A docker project runs the http response for `Hello world`

# Usage
*You can easily build your own docker image of this app as so:*

## use Makefile
run `make` and try it!

## Manually
```
# (Build and tag the docker image)
docker build -t dalmait/go-http-hi .

# (Run up with the image)
docker run --publish 8080:8080 --name gohttphi --rm dalmait/go-http-hi

# (OR run in daemon)
docker run --publish 8080:8080 --name gohttphi -d dalmait/go-http-hi

# (Now you can test in your browser! Replace the ip address with yours)
curl -L http://192.168.99.100:8080
Hello world!

# (Stop the container, will automatically delete the container as we use --rm)
docker stop gohttphi

# (Delete the container if we use the daemon mode as it didn' t delete itself)
docker rm gohttphi
```