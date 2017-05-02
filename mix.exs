defmodule Ecto.UKPostcode.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_uk_postcode,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     name: "Ecto UK Postcode",
     source_url: "https://github.com/sauce-consultants/ecto_uk_postcode",
   ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :ecto, :uk_postcode]]
  end

  defp description do
    """
    Ecto extension to support UK Postcodes in models.
    """
  end


  defp package do
    # These are the default files included in the package
    [
      name: :ecto_uk_postcode,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["John Polling", "Matt Weldon"],
      licenses: ["CC0-1.0"],
      links: %{"GitHub" => "https://github.com/sauce-consultants/ecto_uk_postcode"}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ecto, "~> 2.1.0"},
      {:uk_postcode, "~> 0.3.0"},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

end
