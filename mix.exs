defmodule Sketchpad.Mixfile do
  use Mix.Project

  def project do
    [
      app: :sketchpad,
      version: "0.0.1",
      elixir: "~> 1.2",
      start_permanent: Mix.env() == :prod,
      deps: deps
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:earmark, "~> 0.2.0"},
      {:tzdata, "== 0.1.8", override: true},
      {:timex, "~> 2.1.4"},
      {:yamerl, github: "yakaz/yamerl"},
      {:poison, "~> 2.0"},
      {:html_sanitize_ex, "~> 1.0.0"},
      {:credo, "~> 0.3", only: [:dev, :test]},
      {:cowboy, "~> 1.0.3"},
      {:excoveralls, "~> 0.4", only: :test}
    ]
  end
end
