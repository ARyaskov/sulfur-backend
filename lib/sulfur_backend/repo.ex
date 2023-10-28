defmodule SulfurBackend.Repo do
  use Ecto.Repo,
    otp_app: :sulfur_backend,
    adapter: Ecto.Adapters.Postgres
end
