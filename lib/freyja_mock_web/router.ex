defmodule FreyjaMockWeb.Router do
  use FreyjaMockWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FreyjaMockWeb do
    pipe_through :api
  end
end
