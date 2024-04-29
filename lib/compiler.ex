defmodule Compiler do
  def compile(fileName) do
    data = String.split(File.read!(fileName), "\n")
    data = Enum.map(data, fn i -> String.trim(i) end)
    # Enum.map(data, fn i ->
    #   if (String.length(i) != 0) do i end
    # end)
    valid =
      with {:ok, _voided} <- ^data = remap(syntax(data)), # TUPLE NOT ENUMERABLE!!!!
      do: {:ok}
    case valid do
      {:ok} -> {:ok}
      {:error, reason} -> {:error, reason}
    end
    IO.puts "WORKED:\n"
    IO.puts data
    {:ok}
  end

  # TODO: remap fn remap to properly enumerate tuple (Enum.map not enumerable over tuple)
  defp remap(dataMap) do
    Enum.map(dataMap, fn {_atom, val} -> val end)
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
