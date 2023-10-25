defmodule SulfurBackendWeb.Schema do
  use Absinthe.Schema

  alias SulfurBackendWeb.ClientsResolver
  object :client do
    field :id, :string
    field :firstName, :string
    field :lastName, :string
  end

  # schema load: Absinthe.Schema.Notation.load("schema.graphql")
  # import_sdl path: "schema.graphql"
  query do
    field :clients, list_of(:client)
     do
      resolve(&ClientsResolver.list_clients/3)

    end
  end

end
