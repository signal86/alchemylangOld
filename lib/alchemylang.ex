defmodule Alchemylang do
  @moduledoc """
  Documentation for `Alchemylang`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Alchemylang.hello()
      :world

  """
  def run(fileName) do
    if File.exists?(fileName) do
      # Compiler.compile("tes")
      IO.puts "file found"
    else
      IO.puts "file not found"
    end
  end
end
