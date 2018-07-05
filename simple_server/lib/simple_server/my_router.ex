defmodule SimpleServer.MyRouter do
  use Plug.Router
  use Plug.Debugger
  require Logger

  plug(Plug.Logger, log: :debug)
  plug :match
  plug :dispatch

  get "/hello" do
    send_resp(conn, 200, "hello world!")
  end

  match _ do
    send_resp(conn, 404, "Oops")
  end
end

