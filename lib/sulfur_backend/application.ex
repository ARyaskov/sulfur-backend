defmodule SulfurBackend.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      SulfurBackend.Repo,
      # supervisor(SulfurBackend.Repo, []),
      supervisor(SulfurBackendWeb.Endpoint, [])
    ]

    opts = [strategy: :one_for_one, name: SulfurBackend.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
