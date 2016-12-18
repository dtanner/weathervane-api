defmodule WeathervaneApi.PredictionController do
  use WeathervaneApi.Web, :controller

  alias WeathervaneApi.Prediction

  def index(conn, _params) do
    predictions = Repo.all(Prediction)
    render(conn, "index.json", predictions: predictions)
  end

end
