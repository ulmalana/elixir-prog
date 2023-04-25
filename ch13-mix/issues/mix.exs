defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      escript: escript_config(),
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      name: "Github Issues Fetcher",
      source_url: "https://github.com/ulmalana/elixir-prog",
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:httpoison, "~> 2.1.0"},
      {:poison, "~> 5.0"},
      {:ex_doc, "~> 0.19"},
      {:earmark, "~> 1.4.37"}
    ]
  end

  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
