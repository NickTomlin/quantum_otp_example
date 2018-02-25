defmodule QuantumTestTest do
  use ExUnit.Case
  doctest QuantumTest

  test "greets the world" do
    assert QuantumTest.hello() == :world
  end
end
