# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :train_mate, TrainMateWeb.Endpoint,
  #
  # This should be localhost, but changing it to the prod host as a temp fix
  #
  url: [host: "gigalixirapp.com"],
  secret_key_base: "4tsd4Oq/L6mbaIhtaJFZHmx9NYjtvVGJECQttLBEqHMW0sDPHeQ4GS0Mf8lCbDYJ",
  render_errors: [view: TrainMateWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TrainMate.PubSub,
  live_view: [signing_salt: "zC3dGthw"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
