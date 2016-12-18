defmodule WeathervaneApi.ObservationView do
  use WeathervaneApi.Web, :view

  def render("index.json", %{observations: observations}) do
    %{data: render_many(observations, WeathervaneApi.ObservationView, "observation.json")}
  end

  def render("show.json", %{observation: observation}) do
    %{data: render_one(observation, WeathervaneApi.ObservationView, "observation.json")}
  end

  def render("observation.json", %{observation: observation}) do
    %{date: observation.date,
      location: observation.location,
      high_f: observation.high,
      low_f: observation.low,
      precip_inches: observation.precip}
  end
end
