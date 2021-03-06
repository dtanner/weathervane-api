# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :weathervane_api,
  ecto_repos: [WeathervaneApi.Repo]

# Configures the endpoint
config :weathervane_api, WeathervaneApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wDs7qpJdTIXE0y96nQ6xeO7LqjNshTRZlul7yztmGc6sm8nLGkRVnDEW211EOee6",
  render_errors: [view: WeathervaneApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WeathervaneApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
