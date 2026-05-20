FROM ubuntu:22.04

RUN apt update && \
    apt install -y fortune-mod cowsay netcat && \
    ln -s /usr/games/cowsay /usr/bin/cowsay && \
    ln -s /usr/games/fortune /usr/bin/fortune

WORKDIR /app

COPY . .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
