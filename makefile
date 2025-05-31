default: docker-rebuild

docker-rebuild:
	docker compose up -d --no-deps --build
	docker compose up

docker-clean:
	docker stop $(docker ps -qa) && docker rm $(docker ps -qa) && docker volume rm $(docker volume ls -q) && docker network rm $(docker network ls -q)