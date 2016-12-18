defmodule WeathervaneApi.Repo.Migrations.CreatePrediction do
  use Ecto.Migration

  def change do
    create table(:prediction) do
      add :predicted_on, :utc_datetime
      add :target_date, :date
      add :days_before, :integer
      add :location, :string
      add :provider, :string
      add :low, :integer
      add :high, :integer
      add :pop, :decimal

    end

  end
end
