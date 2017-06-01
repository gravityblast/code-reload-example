defmodule Example do
  use Application
  require Logger

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    port = Application.get_env(:example, :port)

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, Example.Endpoint, [], [port: port]),
    ] ++ children(Mix.env)

    opts = [strategy: :one_for_one, name: Example.Supervisor]

    case Supervisor.start_link(children, opts) do
      {:ok, _} = ok ->
        Logger.info("Running at http://localhost:#{port}")
        ok
      error ->
        error
    end
  end

  def children(:dev), do: [Supervisor.Spec.worker(CodeReloader.Server, [])]
  def children(_), do: []
end
