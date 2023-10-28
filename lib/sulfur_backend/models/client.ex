defmodule SulfurBackend.ClientRepo do
  use Ecto.Schema

  schema "clients" do
    field(:first_name, :string)
    field(:last_name, :string)
  end
end
