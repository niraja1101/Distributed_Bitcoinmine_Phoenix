# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bitcoinmine,
  ecto_repos: [Bitcoinmine.Repo]

# Configures the endpoint
config :bitcoinmine, BitcoinmineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TcOaqDPgmprblwDQn90570ovrIH3fe/Gw7jFvHIhVH88y736nuwgv0cbVQ0UKGZT",
  render_errors: [view: BitcoinmineWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bitcoinmine.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
