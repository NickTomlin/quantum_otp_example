defmodule QuantumTest do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      worker(QuantumTest.Scheduler, [])
    ]

    opts = [strategy: :one_for_one, name: QuantumTest.Supervisor]

    Supervisor.start_link(children, opts)
  end

  def app_task do
    File.write("tmp/app_time.txt", "From the App #{Timex.now}", [:append])
  end
end
