defmodule WeathervaneApi.Repo.Migrations.CreateObservation do
  use Ecto.Migration

  def change do
    create table(:observation, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :date, :date
      add :location, :string
      add :high, :integer
      add :low, :integer
      add :precip, :decimal
    end

  end
end
