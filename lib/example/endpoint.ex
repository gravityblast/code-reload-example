defmodule Example.Endpoint do
  use Plug.Builder

  def config(:reloadable_compilers), do: [:elixir]

  if Mix.env == :dev do
    plug CodeReloader.Plug, endpoint: __MODULE__
  end

  plug Example.Router
end
