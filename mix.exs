defmodule EctoTalon.Mixfile do
  use Mix.Project

  @version "0.1.0"
  def project do
    [app: :ecto_talon,
     version: @version,
     elixir: "~> 1.4",
     deps: deps(),

     # Hex
     description: "Integration betwen Talon & Ecto",
     package: package(),

     # Docs
     name: "EctoTalon",
     docs: [source_ref: "v#{@version}",
            source_url: ""]]
  end

  def application do
    [applications: [:logger, :ecto]]
  end

  def package() do
    [maintainers: ["Steve Pallen"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/talonframework/ecto_talon"}]
  end


  defp deps do
    [{:ecto, "~> 2.1"}]
  end
end
