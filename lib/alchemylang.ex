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
      IO.puts "file found"
      valid =
        with {:ok} <- Compiler.compile(fileName),
        do: {:ok}
      case valid do
        {:ok} -> IO.puts "compilation successful"
        {:error, reason} -> IO.puts "build failed -> " |> Kernel.<>(reason)
      end
      Compiler.compile(fileName)
    else
      IO.puts "file not found"
    end
  end
end
