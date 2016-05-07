# Jetty Dockerfile

[![Docker Pulls](https://img.shields.io/docker/pulls/almeida/jetty.svg)](https://hub.docker.com/r/almeida/jetty/)
[![Docker Stars](https://img.shields.io/docker/stars/almeida/jetty.svg)](https://hub.docker.com/r/almeida/jetty/)

## Description

### Provides

  Jetty Web server and javax.servlet container (http://www.eclipse.org/jetty/).

### Volumes

 * /opt/jetty/webapps

### Exposed Ports

 * 8080

### Environment vars

 * JETTY_OPTS (optional)

## Run

	$ docker run -d \
		--name jetty \	
		-p 8080:8080 \
		-v /somehostdir/webapps/:/opt/jetty/webapps/ \
		almeida/jetty

## Run using JETTY_OPTS

	$ docker run -d \
		--name jetty \
		-e JETTY_OPTS="-Xmx1024m -Dsomeotherparam=paramvalue" \
		-p 8080:8080 \
		-v /somehostdir/webapps/:/opt/jetty/webapps/ \
		almeida/jetty
