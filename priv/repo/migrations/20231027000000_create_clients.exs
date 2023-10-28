defmodule SulfurBackend.Migrations.CreateClientsTable do
  use Ecto.Migration

  def change do
    create table "clients" do
      add :first_name, :string
      add :last_name, :string

      timestamps()
    end
    create unique_index(:clients, [:first_name, :last_name])
  end

  def down do
    drop table "clients"
  end
end
