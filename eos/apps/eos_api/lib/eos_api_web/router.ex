defmodule EosApiWeb.Router do
  use EosApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EosApiWeb do
    pipe_through :api
  end
end
