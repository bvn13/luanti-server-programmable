# Luanti (ex. minetest) programmable

## What is it?

It's a Luanti (minetest) server with additionally included lua libraries.

It is based on [official minetest docker image](https://github.com/minetest/minetest/blob/master/Dockerfile) distributing [by maintainers](https://github.com/minetest/minetest/blob/master/doc/docker_server.md).

## How does it work?

Docker image includes lua-socket addon to provide a possibility to listen to the TCP port.

It's strongly necessary for [mineysocket](https://github.com/bvn13/mineysocket/tree/dev) to be run.

Mineysocket is a Network API for Luanti server.

# Что это?

Помните, в майнкрафте был мод, позволяющий писать код на питоне и модифицировать мир? Этот мод активно используется в обучательных программах для детей.

То, что я представляю, - мод для Luanti (ex. minetest), нацеленный на тот же результат.

# Как работает?

Поднимается сервер Luanti, в мир подключается мод, и можно подключаться к порту, чтобы творить.

За основу берется официальный сервер Luanti.

# Как установить?

Я не создавал стартеров, которые развернут из коробки все добро, поэтому придется чуть руками:

1. Подготовить папку/директорию для хранения мира (`~/minetest`)
2. Создать сервер `DATA=~/minetest docker compose up -d`
3. Развернуть мир, скачав его из [официальных источников](https://content.luanti.org/packages/?type=game), [дефолтный этот](https://content.luanti.org/packages/Minetest/minetest_game/) 
3. Подключить мод в игру `cd /home/bvn13/minetest/games/minetest_game/mods && git clone https://gitea.bvn13.me/luanti-programmable/luanti-mod-network-api.git mineysocket`
4. Дать привелегированные права для мода - в файле `/home/bvn13/minetest/main-config/minetest.conf` добавить/поменять строку `secure.trusted_mods = mineysocket`
5. Указать IP для мода - в файле `/home/bvn13/minetest/main-config/minetest.conf` добавить строку `mineysocket.host_ip = 0.0.0.0`

# Клиент

Писать код на питоне и управлять сервером можно, взяв за основу [проект](https://gitea.bvn13.me/luanti-programmable/luanti-network-api-client).

## Примеры

- Пример 1 - [следит за позицией игрока](https://gitea.bvn13.me/luanti-programmable/luanti-network-api-client/src/branch/master/examples/02_player_locator.py)
- Пример 2 - [создает пончик](https://gitea.bvn13.me/luanti-programmable/luanti-network-api-client/src/branch/master/examples/donut.py)

# Все репы

тут https://gitea.bvn13.me/luanti-programmable

клоны:

- https://github.com/bvn13/luanti-server-programmable
- https://github.com/bvn13/luanti-mod-network-api
- https://github.com/bvn13/luanti-network-api-client
