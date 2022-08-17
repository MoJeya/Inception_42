NAME = inception

url = mjeyavat.42.fr

$(NAME):
	docker-compose -f src/docker-compose.yaml up --build

volume-dir:
	mkdir -p ${HOME}/data
	mkdir -p ${HOME}/data/db
	mkdir -p ${HOME}/data/www


reload:
	docker-compose -f src/docker-compose.yaml up

all: $(NAME)

clean:
	docker-compose -f src/docker-compose.yaml down