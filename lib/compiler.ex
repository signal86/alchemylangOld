defmodule Compiler do
  def compile(fileName) do
    data = String.split(File.read!(fileName), "\n")
    data = Enum.map(data, fn i -> String.trim(i) end)
    # Enum.map(data, fn i ->
    #   if (String.length(i) != 0) do i end
    # end)
    valid =
      with {:ok, data} <- data = syntax(data),
      # preprocessor
      # rest
      do: {:ok}
    case valid do
      {:ok} -> {:ok}
      {:error, reason} -> {:error, reason}
    end
    IO.puts "WORKED:\n"
    IO.puts data
    {:ok}
  end

  defp syntax(data) do
    # reason = "lol"
    # {:error, reason}
    try do
      data = Enum.map(data, fn i ->
        i
        # reason = "test"
        # throw({:error, reason})
      end)
      {:ok, data}
    catch
      {:error, reason} -> {:error, reason}
    end
  end
end
