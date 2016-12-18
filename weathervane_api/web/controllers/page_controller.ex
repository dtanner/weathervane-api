defmodule WeathervaneApi.PageController do
  use WeathervaneApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
