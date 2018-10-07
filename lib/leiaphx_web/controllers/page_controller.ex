defmodule LeiaphxWeb.PageController do
  use LeiaphxWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
