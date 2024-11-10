defmodule TeslaMate.Repo.Migrations.AddTimeBasedCostsToGeofences do
  use Ecto.Migration

  def change do
    alter table(:geofences) do
      add :night_cost_per_unit, :decimal, precision: 6, scale: 4
      add :night_session_fee, :decimal, precision: 6, scale: 2
      add :night_start_hour, :integer, default: 23  # 11 PM
      add :night_end_hour, :integer, default: 6     # 6 AM
    end
  end
end