defmodule WeathervaneApi.ObservationView do
  use WeathervaneApi.Web, :view

  def render("index.json", %{observations: observations}) do
    %{data: render_many(observations, WeathervaneApi.ObservationView, "observation.json")}
  end

  def render("show.json", %{observation: observation}) do
    %{data: render_one(observation, WeathervaneApi.ObservationView, "observation.json")}
  end

  def render("observation.json", %{observation: observation}) do
    %{id: observation.id,
      date: observation.date,
      location: observation.location,
      high: observation.high,
      low: observation.low,
      precip: observation.precip}
  end
end
