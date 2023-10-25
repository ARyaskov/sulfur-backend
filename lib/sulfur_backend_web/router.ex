defmodule SulfurBackendWeb.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v0/graphql" do
    pipe_through :api
    forward "/clients", Absinthe.Plug, schema: SulfurBackendWeb.Schema
    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: SulfurBackendWeb.Schema,
      interface: :simple,
      context: %{pubsub: SulfurBackendWeb.Endpoint}
  end
end
