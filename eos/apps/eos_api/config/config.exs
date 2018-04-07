# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :eos_api,
  namespace: EosApi

# Configures the endpoint
config :eos_api, EosApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1fWvdrYX6tMIgQkgAAIZOtVVAKd/rZrboVh8SAVUhWet0RikOKhMJdxX+1uWAwX5",
  render_errors: [view: EosApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: EosApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
