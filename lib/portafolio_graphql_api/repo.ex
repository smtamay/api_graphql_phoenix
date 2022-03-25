defmodule PortafolioGraphqlApi.Repo do
  use Ecto.Repo,
    otp_app: :portafolio_graphql_api,
    adapter: Ecto.Adapters.Postgres
end
