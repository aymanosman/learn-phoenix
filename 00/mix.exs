defmodule Rum.MixProject do
  use Mix.Project

  def project do
    [
      app: :rum,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Rum.Application, []}
    ]
  end

  defp deps do
    [
      {:phoenix, "~> 1.4.0"},
      {:plug_cowboy, "~> 2.0"}
    ]
  end
end
