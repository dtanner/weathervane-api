defmodule WeathervaneApi.ObservationTest do
  use WeathervaneApi.ModelCase

  alias WeathervaneApi.Observation

  @valid_attrs %{date: %{day: 17, month: 4, year: 2010}, high: 42, location: "some content", low: 42, precip: "120.5"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Observation.changeset(%Observation{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Observation.changeset(%Observation{}, @invalid_attrs)
    refute changeset.valid?
  end
end
