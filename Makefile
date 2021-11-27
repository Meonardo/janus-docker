TEMPLATE_NAME ?= janus-docker
NAME ?= meonardo
APP_NAME ?= janus

build:
	@docker build -t $(NAME)/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t $(NAME)/$(TEMPLATE_NAME) .

# 7889 janus admin https port
run: 
	@docker run -p 443:443 -p 8088:8088 -p 8089:8089 -p 8188:8188 -p 7889:7889 --name="$(APP_NAME)" -it -t $(NAME)/$(TEMPLATE_NAME)

run-hide: 
	@docker run --net=host --name="$(APP_NAME)" -it -t $(NAME)/$(TEMPLATE_NAME) >> /dev/null

# example for replace vd room plugin config file
start-mac:
	@docker cp ./configs/janus.plugin.videoroom.jcfg $(APP_NAME):/opt/janus/etc/janus
	@docker start $(APP_NAME)