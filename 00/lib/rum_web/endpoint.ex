defmodule RumWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :rum

  plug(:hello_web)

  def hello_web(conn, _opts) do
    conn
    |> Plug.Conn.resp(200, "<h2>Hello Web!</h2>")
    |> Plug.Conn.put_resp_header("content-type", "text/html")
    |> Plug.Conn.send_resp()
  end
end
