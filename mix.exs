defmodule EctoExAdmin.Mixfile do
  use Mix.Project

  @version "0.1.0"
  def project do
    [app: :ecto_ex_admin,
     version: @version,
     elixir: "~> 1.4",
     deps: deps(),

     # Hex
     description: "Integration betwen ExAdmin & Ecto",
     package: package(),

     # Docs
     name: "Ecto/ExAdmin",
     docs: [source_ref: "v#{@version}",
            source_url: ""]]
  end

  def application do
    [applications: [:logger, :ecto]]
  end

  def package() do
    [maintainers: ["Steve Pallen"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/smpallen99/ecto_ex_amin"}]
  end


  defp deps do
    [{:ecto, "~> 2.1"},
     {:ex_admin, github: "ex-admin/ex_admin", only: :test}]
  end
end
