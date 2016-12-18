defmodule WeathervaneApi.PredictionTest do
  use WeathervaneApi.ModelCase

  alias WeathervaneApi.Prediction

  @valid_attrs %{days_before: 42, high: 42, location: "some content", low: 42, pop: "120.5", predicted_on: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, provider: "some content", target_date: %{day: 17, month: 4, year: 2010}}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Prediction.changeset(%Prediction{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Prediction.changeset(%Prediction{}, @invalid_attrs)
    refute changeset.valid?
  end
end
