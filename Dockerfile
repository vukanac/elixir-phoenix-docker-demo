FROM elixir:1.8

# RUN apt-get update && apt-get install --yes postgresql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

ADD . /app

RUN mix local.hex --force

# RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN mix archive.install hex phx_new 1.4.6

WORKDIR /app

EXPOSE 4000

CMD ["./run.sh"]
