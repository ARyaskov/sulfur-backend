defmodule SulfurBackendWeb.Schema do
  @moduledoc false
  use Absinthe.Schema
  alias SulfurBackendWeb.ClientsResolver
  import_sdl(path: "schema.graphql")

  def hydrate(%{identifier: :clients}, [%{identifier: :query} | _]) do
    {:resolve, &ClientsResolver.list_clients/3}
  end

  def hydrate(_node, _ancestors), do: []
end
