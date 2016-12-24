defmodule WeathervaneApi.ObservationParams do
  use WeathervaneApi.Web, :model

  schema "ObservationParams" do
    field :startDate, :string
    field :endDate, :string
    field :location, :string
  end

  def changeset(model, params \\ :empty) do
    model
     |> cast(params, [:startDate, :endDate, :location])
     |> validate_required([:startDate, :endDate, :location])
  end
end
