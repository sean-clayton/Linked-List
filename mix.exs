defmodule LinkedList.Mixfile do
  use Mix.Project

  def project do
    [
      app: :linked_list,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      test_coverage: [
        test_task: "espec",
        tool: ExCoveralls
      ],
      preferred_cli_env: [
        "coveralls": :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        espec: :test,
      ]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:credo, "~> 0.7", only: [:dev, :test]},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:espec, "~> 1.3.4", only: [:dev, :test]},
      {:excoveralls, "~> 0.6", only: :test},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false},
    ]
  end
end
