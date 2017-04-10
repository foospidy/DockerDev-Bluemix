PROJECT_DIR?=$$HOME/dev

build:
	docker build -t bluemix-dev .

build-no-cache:
	docker build --no-cache -t bluemix-dev .

run:
	docker run -i -v $(PROJECT_DIR)/Bluemix/:/Bluemix/ -t bluemix-dev /bin/bash
