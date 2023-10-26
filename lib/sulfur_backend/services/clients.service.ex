defmodule SulfurBackend.ClientsService do
  def list_clients(args) do
    clients = [
      %{id: "1", first_name: "John", last_name: "Doe"},
      %{id: "2", first_name: "Alice", last_name: "Smith"},
      %{id: "3", first_name: "Bob", last_name: "Johnson"}
    ]

    clients
  end
end
