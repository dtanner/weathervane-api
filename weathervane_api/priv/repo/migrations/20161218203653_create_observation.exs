defmodule WeathervaneApi.Repo.Migrations.CreateObservation do
  use Ecto.Migration

  def change do
    create table(:observation) do
      add :date, :date
      add :location, :string
      add :high, :integer
      add :low, :integer
      add :precip, :decimal
    end

  end
end
