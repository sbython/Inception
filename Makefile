

build:
	docker compose up --build -d
down:
	-docker compose down
	-docker compose down -v
	-docker compose down --rmi all
clean:
	-docker rm -f $(shell docker ps -aq)
	-docker rmi -f $(shell docker images -q)
ps:
	@echo ============== docker imags =================
	docker images
	@echo ============== docker containers =================
	docker ps -a
	@echo ============== docker networks ==============
	docker network ls
	@echo ============== docker volume ================
	docker network ls