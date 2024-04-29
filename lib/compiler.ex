defmodule Compiler do
  def compile(fileName) do
    data = String.split(File.read!(fileName), "\n")
    data = Enum.map(data, fn i -> String.trim(i) end)
    # Enum.map(data, fn i ->
    #   if (String.length(i) != 0) do i end
    # end)
    valid =
      with {:ok} <- syntax(data),
      do: {:ok}
    case valid do
      {:ok} -> IO.puts "all good"
      {:error, reason} -> IO.puts "build failed -> " |> Kernel.<>(reason)
    end
  end

  defp syntax(data) do
    reason = "lol"
    {:error, reason}
  end
end
