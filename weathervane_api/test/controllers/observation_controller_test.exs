defmodule WeathervaneApi.ObservationControllerTest do
  use WeathervaneApi.ConnCase

  alias WeathervaneApi.{Repo, Observation}
  @valid_attrs %{date: %{day: 17, month: 4, year: 2010}, high: 62, location: "MSP", low: 42, precip: "0.5"}
  @invalid_attrs %{}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}

    observations = [ Observation.changeset(%Observation{}, %{date: %{day: 1, month: 1, year: 2016}, high: 60, location: "MSP", low: 40, precip: "0.0"}) ]
    #     observations = [
    #        Observation.changeset(%Observation{}, %{date: %{day: 1, month: 1, year: 2016}, high: 60, location: "MSP", low: 40, precip: "0.0"}),
    #        Observation.changeset(%Observation{}, %{date: %{day: 1, month: 1, year: 2016}, high: 61, location: "MSP", low: 41, precip: "0.1"}),
    #        Observation.changeset(%Observation{}, %{date: %{day: 1, month: 1, year: 2016}, high: 62, location: "DEN", low: 42, precip: "0.2"}),
    #        Observation.changeset(%Observation{}, %{date: %{day: 1, month: 2, year: 2016}, high: 63, location: "MSP", low: 43, precip: "0.3"})
    #    ]
    Enum.each(observations, &Repo.insert!(&1))

  end

#  test "lists all entries on index", %{conn: conn} do
#    conn = get conn, observation_path(conn, :index)
#    assert json_response(conn, 200)["data"] == []
#  end

  test "filter results based on query params", %{conn: conn} do

    response = conn
    |> get(observation_path(conn, :index))
    |> json_response(200)

    expected = %{
      "data" => [
        %{ "date" => "2016-01-01", "location" => "MSP", "low_f" => 40, "high_f" => 60, "precip_inches" => "0.0" }
      ]
    }

    assert response == expected
  end

end
