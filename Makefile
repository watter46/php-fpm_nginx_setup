# docker コマンド
# build:
# 				docker build -t test .
# run:
# 				docker run --name test -d -p 80:80 test
# down:
# 				docker stop test && docker rm test && docker image rm test
# rm:
# 				docker image rm test
# ls:
# 				docker image ls
# ps:
# 				docker ps -a --no-trunc
# logs:
# 				docker logs test


# up:
# 				@make build
# 				@make run
# auto:
# 				@make down
# 				@make build
# 				@make run


# docker-compose コマンド
build:
				docker compose build --no-cache --force-rm
# build:
# 				docker compose build
ps:
				docker ps -a --no-trunc
up:
				@make build
				docker compose up -d
down:
				docker compose down --rmi all --volumes --remove-orphans
auto:
				@make down
				@make up
logs:
				docker compose logs

app:
				docker compose exec app bash
web:
				docker compose exec web bash

# dockerデバッグ　テスト
inapp:
				docker run -it --rm test2_app bash
inweb:
				docker run -it --rm test2_web bash

#一括削除
prune:
				docker system prune  --volumes
