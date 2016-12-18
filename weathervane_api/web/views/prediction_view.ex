defmodule WeathervaneApi.PredictionView do
  use WeathervaneApi.Web, :view

  def render("index.json", %{predictions: predictions}) do
    %{data: render_many(predictions, WeathervaneApi.PredictionView, "prediction.json")}
  end

  def render("show.json", %{prediction: prediction}) do
    %{data: render_one(prediction, WeathervaneApi.PredictionView, "prediction.json")}
  end

  def render("prediction.json", %{prediction: prediction}) do
    %{predicted_on: prediction.predicted_on,
      target_date: prediction.target_date,
      days_before: prediction.days_before,
      location: prediction.location,
      provider: prediction.provider,
      low_f: prediction.low,
      high_f: prediction.high,
      precip_probability: prediction.pop}
  end
end
