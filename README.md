# Luanti (ex. minetest) programmable

## What is it?

It's a Luanti (minetest) server with additionally included lua libraries.

It is based on [official minetest docker image](https://github.com/minetest/minetest/blob/master/Dockerfile) distributing [by maintainers](https://github.com/minetest/minetest/blob/master/doc/docker_server.md).

## How does it work?

Docker image includes lua-socket addon to provide possibility to listen to the TCP port.

It's strongly necessary for [mineysocket](https://github.com/bvn13/mineysocket/tree/dev) to be run.

Mineysocket is a Network API for Luanti server.

