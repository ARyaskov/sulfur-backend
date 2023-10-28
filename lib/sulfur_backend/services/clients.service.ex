import Ecto.Query

defmodule SulfurBackend.ClientsService do
  alias SulfurBackend.{Repo, ClientRepo}

  def list_clients(args) do
    Repo.all(from(c in ClientRepo, select: [:id, :first_name, :last_name]))
  end
end
