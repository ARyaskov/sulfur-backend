defmodule SulfurBackendWeb.Endpoint do
use Phoenix.Endpoint, otp_app: :sulfur_backend

if code_reloading? do
  plug Phoenix.CodeReloader
end

plug Plug.RequestId
plug Plug.Logger

plug Plug.Parsers,
  parsers: [:urlencoded, :multipart, :json],
  pass: ["*/*"],
  json_decoder: Phoenix.json_library()

plug SulfurBackendWeb.Router
end
