# Rocketpay

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix



## setup - nlw#4 Elixir
* install postgres
`docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres`

* create project
`mix phx.new name_project --now-webpack --no-html`


* database
`mix ecto.setup`

* lib credo
`{:credo, "~>1.5", only: [:dev, :test], runtime: false}`

* dependencies
`mix deps.get`

* build
`mix credo gen.config`

* start project
`mix phx.server`