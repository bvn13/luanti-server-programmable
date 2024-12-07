# https://github.com/minetest/minetest/blob/master/Dockerfile

FROM ghcr.io/linuxserver/minetest:latest

#ARG GAME_NAME
#ENV CLI_ARGS="--gameid $GAME_NAME"

RUN apk add --no-cache luajit lua5.1-socket

#RUN echo "#!/usr/bin/env bash" > /usr/local/bin/ipv4
#RUN echo "ifconfig | grep -A 1 eth0 | tail -n 1 | awk '{ print \$2 }' | sed 's/addr://'" >> /usr/local/bin/ipv4
#RUN chmod o+x /usr/local/bin/ipv4

RUN echo "#!/usr/bin/env bash" > /usr/local/bin/start_luanti
#RUN echo "export IPV4=\$(/usr/local/bin/ipv4)" >> /usr/local/bin/start_luanti
#RUN echo "echo \$IPV4" >> /usr/local/bin/start_luanti
RUN echo "/usr/bin/luantiserver --config /config/.minetest/main-config/minetest.conf --gameid \$GAME_NAME --worldname \$GAME_NAME" >> /usr/local/bin/start_luanti
RUN chmod o+x /usr/local/bin/start_luanti

ENTRYPOINT ["/usr/local/bin/start_luanti"]

#RUN echo "#!/usr/bin/env bash" > /usr/bin/app
#RUN echo "for ((;;))" >> /usr/bin/app
#RUN echo "do" >> /usr/bin/app
#RUN echo "sleep 1" >> /usr/bin/app
#RUN echo "done" >> /usr/bin/app
#RUN chmod o+x /usr/bin/app
#ENTRYPOINT ["bash", "/usr/bin/app"]
