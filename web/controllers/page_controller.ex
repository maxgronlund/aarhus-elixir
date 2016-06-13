defmodule AarhusElixir.PageController do
  use AarhusElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
