defmodule WeathervaneApi.PredictionControllerTest do
  use WeathervaneApi.ConnCase

  alias WeathervaneApi.Prediction
  @valid_attrs %{days_before: 42, high: 62, location: "MSP", low: 42, pop: "120.5", provider: "aeris", target_date: %{day: 17, month: 4, year: 2010}}
  @invalid_attrs %{}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, prediction_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

end
