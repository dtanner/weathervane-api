defmodule WeathervaneApi.Observation do
  use WeathervaneApi.Web, :model

  schema "observation" do
    field :date, Ecto.Date
    field :location, :string
    field :high, :integer
    field :low, :integer
    field :precip, :decimal

  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:date, :location, :high, :low, :precip])
    |> validate_required([:date, :location, :high, :low, :precip])
  end
end
