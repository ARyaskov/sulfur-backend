defmodule SulfurBackendWeb.UserSocket do
  use Phoenix.Socket
  transport :websocket, Phoenix.Transport.Websocket,
      key1: value1, key2: value2, key3: value3
end
