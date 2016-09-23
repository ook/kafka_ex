defmodule KafkaEx.Mixfile do
  use Mix.Project

  def project do
    [app: :kafka_ex,
     version: "0.5.0",
     elixir: "~> 1.0",
     description: description,
     package: package,
     deps: deps,
     docs: [main: "KafkaEx"]]
  end

  def application do
    [
      mod: {KafkaEx, []},
      applications: [:logger]
    ]
  end

  defp deps do
    [
      {:earmark, "~> 0.2.1", only: :dev},
      {:dialyze, "~> 0.2", only: :dev},
      {:ex_doc, "~> 0.12.0", only: :dev},
      {:credo, "~> 0.4.5", only: :dev},
      {:snappy,
       git: "https://github.com/fdmanana/snappy-erlang-nif",
       only: [:dev, :test]}
    ]
  end

  defp description do
    "Kafka client for Elixir/Erlang."
  end

  defp package do
    [maintainers: ["Abejide Ayodele", "Jack Lund"],
     files: ["lib", "mix.exs", "README.md"],
     licenses: ["MIT"],
     links: %{"Github" => "https://github.com/kafkaex/kafka_ex"}]
  end
end
