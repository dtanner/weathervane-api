defmodule WeathervaneApi.ObservationController do
  use WeathervaneApi.Web, :controller

  alias WeathervaneApi.Observation
  alias WeathervaneApi.ObservationParams

  import WeathervaneApi.Helpers, only: [changeset_errors: 1, scrub_get_params: 2]

  plug :scrub_get_params

  def index(conn, params) do
#  def index(conn, %{"startDate" => startDate, "endDate" => endDate, "location" => location} = params) do
#    conn
#    |> text("I see, #{name} is #{age} years old!")

    cs = ObservationParams.changeset(%ObservationParams{}, params)
    case cs do
      %{:params => %{ "startDate" => startDate, "endDate" => endDate, "location" => location }, :valid? => true} ->
#        conn |> text("I see, #{name} is #{age} years old!")

#      observations = WeathervaneApi.Observation |> Ecto.Query.where(last_name: ^last_name) |> WeathervaneApi.Repo.all
#      observations = Ecto.Query.from(o in WeathervaneApi.Observation, where: o.date >= ^startDate ) |> WeathervaneApi.Repo.all
#      query = WeathervaneApi.Observation |> Ecto.Query.where(date: "Smith")

      observations = Repo.all from o in Observation,
                            where: (o.date >= ^startDate
                                   and o.date < ^endDate
                                   and location == ^location)



#      observations = Repo.all(Observation)
      render(conn, "index.json", observations: observations)

      _ ->
        error_msgs = changeset_errors(cs)
        IO.inspect cs
        conn
        |> put_status(400)
        |> text("Invalid Parameters: #{error_msgs}")
    end

  end


#  def index(conn, _params) do
#    conn
#    |> put_status(400)
#    |> text("Error, wrong parameters supplied!")
#  end

#  def index(conn, _params) do
# end

end
