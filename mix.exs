defmodule Assessor.MixProject do
  use Mix.Project

  def project do
    [
      app: :assessor,
      version: "0.0.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "Assessor"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Assessor, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.30", only: :dev, runtime: false}
    ]
  end

  defp description do
    "The definitive CI/CD platform for AI Quality."
  end

  defp package do
    [
      name: "assessor",
      files: ["lib", "mix.exs", "README.md"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/nshkrdotcom/Assessor"}
    ]
  end
end
