defmodule QuantumExampleTest do
  use ExUnit.Case
  doctest QuantumExample

  test "greets the world" do
    assert QuantumExample.hello() == :world
  end
end
