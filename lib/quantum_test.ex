defmodule QuantumTest do
  use Application

  def start(_type, _args) do
    QuantumTest.Supervisor.start_link()
  end

  def app_task do
    File.write("test/app_time.txt", "From the App #{Timex.now}", [:append])
  end
end
