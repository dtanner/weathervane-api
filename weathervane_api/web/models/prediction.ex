defmodule WeathervaneApi.Prediction do
  use WeathervaneApi.Web, :model

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "prediction" do
    field :predicted_on, Ecto.DateTime
    field :target_date, Ecto.Date
    field :days_before, :integer
    field :location, :string
    field :provider, :string
    field :low, :integer
    field :high, :integer
    field :pop, :decimal

  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:predicted_on, :target_date, :days_before, :location, :provider, :low, :high, :pop])
    |> validate_required([:predicted_on, :target_date, :days_before, :location, :provider, :low, :high, :pop])
  end
end
