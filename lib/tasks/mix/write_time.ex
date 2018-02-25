defmodule Mix.Tasks.QuantumTest.WriteTime do
  use Mix.Task
  @shortdoc "Write the current time to a file"

  def run(args) do
    File.write("test/the_time.text", "#{Timex.now}", [:append])
  end
end

