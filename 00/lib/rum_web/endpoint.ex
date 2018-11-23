defmodule RumWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :rum

  plug :hello_web

  def hello_web(conn, _opts) do
    conn
    |> Plug.Conn.resp(200, "<h2>Hello Web!</h2>")
    |> Plug.Conn.send_resp()
  end
end
