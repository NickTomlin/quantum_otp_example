defmodule QuantumTest.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init([]) do
    children = [
      worker(QuantumTest.Scheduler, [])
    ]

    opts = [strategy: :one_for_one, name: QuantumTest.Supervisor]

    supervise(children, opts)
  end
end
