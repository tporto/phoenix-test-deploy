# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :phoenix_hello, PhoenixHelloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Zo9RnkqZrMl1dWg5hAY4MjTqhHxEdyWGH+EC/Wufpx8InbkqRVeijXGzvVueroCD",
  render_errors: [view: PhoenixHelloWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixHello.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :mix_systemd,
  app_user: "root",
  app_group: "root"

config :mix_deploy,
  deploy_user: "root",
  deploy_group: "root",
  app_user: "root",
  app_group: "root"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
