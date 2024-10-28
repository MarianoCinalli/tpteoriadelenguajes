# Auctions

TP de 7524 Teoría de Lenguajes

## Database

https://www.sqlite.org/quickstart.html

Instal sqlite3:

```
sudo apt install sqlite3
```

Create a database:

```
sqlite3 auctions.db
```

## Run locally

```bash
mix setup
mix phx.server
```

## Run with Docker

- Install: https://docs.docker.com/engine/install/ubuntu/
- Rootless: https://docs.docker.com/engine/install/linux-postinstall/

To build and run:

```bash
docker build -t auctions:latest .
docker run --rm -it -p 4000:4000 --env-file .env  auctions:latest
```

UI is at [http://localhost:4000/](http://localhost:4000/).

## Troubleshooting

### mix.lock not found

```
ERROR: failed to solve: failed to compute cache key: failed to calculate checksum of ref f7f99cbb-8455-401e-9164-8fbeabfaeb17::wrfohqplqb3vos4juq0lk18da: "/mix.lock": not found
```

To fix run: `mix setup`

### Unknown release auctions

```
> [builder 13/13] RUN mix release auctions:                                                                                                                                                                                                                                                                                                    
1.004 ** (Mix) Unknown release :auctions. The available releases are: []
```

To fix run: `mix release.init`

https://hexdocs.pm/mix/1.10.4/Mix.Tasks.Release.Init.html#content

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
