FROM elixir:1.14-slim AS builder

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

RUN apt update && apt install --yes --force-yes git

RUN mix local.hex --force
RUN mix local.rebar --force

COPY . .

RUN mix setup

CMD ["mix", "phx.server"]
