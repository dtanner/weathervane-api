defmodule WeathervaneApi.Repo.Migrations.CreatePrediction do
  use Ecto.Migration

  def change do
    create table(:prediction, primary_key: false) do
      add :id, :uuid, primary_key: true
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
