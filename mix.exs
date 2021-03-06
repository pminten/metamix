defmodule Metamix.Mixfile do
  use Mix.Project

  def project do
    [ app: :metamix,
      version: "0.0.1",
      elixir: "~> 0.10.4-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { Metamix, [] }]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [ { :json, github: "cblage/elixir-json"} ]
  end
end
