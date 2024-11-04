defmodule Auctions.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :reputation, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
