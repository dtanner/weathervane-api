defmodule WeathervaneApi.ObservationControllerTest do
  use WeathervaneApi.ConnCase

  alias WeathervaneApi.Observation
  @valid_attrs %{date: %{day: 17, month: 4, year: 2010}, high: 62, location: "MSP", low: 42, precip: "0.5"}
  @invalid_attrs %{}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, observation_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end


  test "renders page not found when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, observation_path(conn, :show, -1)
    end
  end

end
