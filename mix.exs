defmodule QuantumExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :quantum_example,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {QuantumExample, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [{:quantum, "~> 2.2"},
     {:timex, "~> 3.0"}]
  end
end
