defmodule WeathervaneApi.ObservationController do
  use WeathervaneApi.Web, :controller

  alias WeathervaneApi.Observation

  def index(conn, _params) do
    observations = Repo.all(Observation)
    render(conn, "index.json", observations: observations)
  end

end
