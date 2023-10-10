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


tox-shell: # start a disposable container with bash
	@docker run -it --rm 31z4/tox /bin/bash   