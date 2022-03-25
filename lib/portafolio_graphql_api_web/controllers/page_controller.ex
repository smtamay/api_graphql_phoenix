defmodule PortafolioGraphqlApiWeb.PageController do
  use PortafolioGraphqlApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
