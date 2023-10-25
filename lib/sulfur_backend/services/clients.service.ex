defmodule SulfurBackend.ClientsService do
  def list_clients(args) do
    clients = %{
      res1: %{id: "1", firstName: "John", lastName: "Doe"},
      res2: %{id: "2", firstName: "Alice", lastName: "Smith"},
      res3: %{id: "3", firstName: "Bob", lastName: "Johnson"}

    }

    clients
  end
end
