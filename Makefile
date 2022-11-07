all: up

up:
	@mkdir -p /home/${USER}/data/db
	@mkdir -p /home/${USER}/data/wp
	docker-compose up -d

down:
	docker-compose down

ps:
	docker-compose ps

fclean: down
	@docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker system prune -a --force
	sudo rm -Rf /home/${USER}/data/db
	sudo rm -Rf /home/${USER}/data/wp
	mkdir /home/${USER}/data/db
	mkdir /home/${USER}/data/wp