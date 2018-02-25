# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :logger, level: :debug

config :quantum_test, QuantumTest.Scheduler,
  jobs: [
    mix_task: [
      schedule: "* * * * *",
      task: {Mix.Tasks.QuantumTest.WriteTime, :run, ["Hello"]},
    ],
    application_task: [
      schedule: "*/5 * * * *",
      task: {QuantumTest, :app_task, []}
    ]
  ]
