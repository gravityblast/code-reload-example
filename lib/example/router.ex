defmodule Example.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    conn
    |> send_resp(200, "Hello 1")
    |> halt
  end

  match _ do
    conn
    |> send_resp(404, "Not Found")
    |> halt
  end
end
