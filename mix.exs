defmodule PM.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :pm,
      version: "0.6.0",
      elixir: "~> 1.7",
      description: "PM Project Management",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :pm,
      links: %{"GitHub" => "https://github.com/enterprizing/pm"}
    ]
  end

  def application() do
    [mod: {:pm, []}]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
