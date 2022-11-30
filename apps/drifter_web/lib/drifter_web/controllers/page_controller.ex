defmodule DrifterWeb.PageController do
  use DrifterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
