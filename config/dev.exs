# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :logger, level: :debug

config :quantum_example, QuantumExample.Scheduler,
  jobs: [
    custom_task: [
      schedule: "*/4 * * * *",
      task: fn -> File.write("tmp/task.txt", "#{Timex.now}", [:append]) end
    ],
    application_task: [
      schedule: "*/2 * * * *",
      task: {QuantumExample, :app_task, []}
    ]
  ]
