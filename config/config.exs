# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :funtime,
  ecto_repos: [Funtime.Repo]

# Configures the endpoint
config :funtime, FuntimeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MvR9BY/MOq80SuMfXgzWE6VsEuN2SQ54DJ1vfGaBSzqI19HhM/rkdOwbWSA3H8O+",
  render_errors: [view: FuntimeWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Funtime.PubSub,
  live_view: [signing_salt: "FGJhZv4l"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
