.PHONY: setup
setup:
	@ brew install peco
	@ git submodule init
	@ git submodule update

.PHONY: run
run:
	@ EXERCISE=$(shell find ./code/exercises -mindepth 1 -maxdepth 1 -type d -print0 | sort | xargs -0 -n1 basename | peco) docker-compose up -d --force-recreate

.PHONY: stop
stop:
	@ docker-compose stop

.PHONY: ps
ps:
	@ docker-compose ps

.PHONY: sh
sh:
	@ docker-compose exec server sh

.PHONY: clean
clean:
	@ docker-compose down --rmi all --volumes

.PHONY: update-module
update-module:
	@ git submodule foreach git pull origin master
