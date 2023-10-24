defmodule SulfurBackend.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      SulfurBackendWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:sulfur_backend, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: SulfurBackend.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: SulfurBackend.Finch},
      # Start a worker by calling: SulfurBackend.Worker.start_link(arg)
      # {SulfurBackend.Worker, arg},
      # Start to serve requests, typically the last entry
      SulfurBackendWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SulfurBackend.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SulfurBackendWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
