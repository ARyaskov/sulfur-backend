defmodule SulfurBackend.Migrations.CreateClientsTable do
  use Ecto.Migration

  def up do
    create table("clients") do
      add :id,    :string
      add :first_name, :string
      add :last_name, :string

      timestamps()
    end
  end

  def down do
    drop table("clients")
  end
end
