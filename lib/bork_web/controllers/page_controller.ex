defmodule BorkWeb.PageController do
  use BorkWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
