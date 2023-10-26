defmodule SulfurBackendWeb.ClientsResolver do
  def list_clients(_root, _args, _info) do
    {:ok, SulfurBackend.ClientsService.list_clients(_args)}
  end
end
