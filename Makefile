DOCKER_COMPOSE_FILE = docker/docker-compose.yml

.PHONY: init start stop logs

init:
	docker-compose -f $(DOCKER_COMPOSE_FILE) build

start:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

stop:
	docker-compose -f $(DOCKER_COMPOSE_FILE) stop

logs:
	docker-compose -f $(DOCKER_COMPOSE_FILE) logs -tf
