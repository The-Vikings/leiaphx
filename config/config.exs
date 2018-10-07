# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :leiaphx,
  ecto_repos: [Leiaphx.Repo]

# Configures the endpoint
config :leiaphx, LeiaphxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GrvOR2eBD5AGWbHDLnA1m3k9iQSuvAZKk1fVQ/98Mo5zEac1dSGXMChKLuKd/NQC",
  render_errors: [view: LeiaphxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Leiaphx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
