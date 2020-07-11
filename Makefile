up:
	@make down
	@docker-compose up -d

down:
	@docker-compose down -v

in:
	@docker exec -it bazzilla_php-fpm_1 su www-data -s /bin/bash

up.in:
	@make up
	@make in

update:
	@make down
	@make up