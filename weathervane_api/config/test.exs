use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :weathervane_api, WeathervaneApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :weathervane_api, WeathervaneApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "weathervane_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
