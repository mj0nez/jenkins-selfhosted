
### JENKINS
build: ##  building the jenkins image
	docker build -f ./Dockerfile.jenkins-cstm -t myjenkins-blueocean:2.401.2-1 .

up: ##  bring up the compose stack
	docker compose up -d

down: ## stop the stack and remove objects
	docker compose down

stop: ## stop the stack
	docker compose stop

start: ## start the stack
	docker compose start


### TOX

#mj0nez/tox-ci:latest
#31z4/tox:latest
tox-shell: # start a disposable container with bash
	@docker run -it --rm tox-ci:latest  /bin/bash

build-tox:
	docker build -f ./Dockerfile.tox-cstm -t mj0nez/tox-ci:latest .


tox-shell2: # start a disposable container with bash
	@docker run -it --rm -u 10000 tox-ci:latest  /bin/bash
