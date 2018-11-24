defmodule RumWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :rum

  plug(:hello_web)

  def hello_web(conn, _opts) do
    conn
    |> Plug.Conn.resp(200, "<h2>Hello Web!</h2>")
    |> Plug.Conn.put_resp_header("content-type", "text/html")
    |> Plug.Conn.send_resp()
  end

  # Poor man's livereload
  def restart_server() do
    Application.stop(:rum)
    Application.stop(:phoenix)
    Application.put_env(:phoenix, :serve_endpoints, true, persistent: true)
    Application.ensure_all_started(:rum)
  end
end
