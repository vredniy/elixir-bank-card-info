defmodule BankCardInfo.Mixfile do
  use Mix.Project

  @url_docs "http://hexdocs.pm/bank_card_info"
  @url_github "https://github.com/vredniy/elixir-bank-card-info"

  def project do
    [app: :bank_card_info,
     version: "1.0.0",
     description: "Get brand, card type and country by first digits of a bank card.",
     package: %{
       files: [
         "lib",
         "mix.exs",
         "README.md"
       ],
       licenses: [ "MIT" ],
       links: %{
         "Docs" => @url_docs,
         "GitHub" => @url_github
       },
       maintainers: [ "Dmitry Zudochkin" ]
     },
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:httpotion, "~> 3.0.3"},
      {:poison, "~> 3.1"},
      {:ex_doc, "~> 0.16.2", only: :dev, runtime: false}
    ]
  end
end
