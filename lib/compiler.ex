defmodule Compiler do
  def compile(fileName) do
    data = String.split(File.read!(fileName), "\n")
    data = Enum.map(data, fn i -> String.trim(i) end)
    # Enum.map(data, fn i ->
    #   if (String.length(i) != 0) do i end
    # end)
    valid =
      with {:ok} <- data = syntax(data),
      do: {:ok}
    case valid do
      {:ok} -> {:ok}
      {:error, reason} -> {:error, reason}
    end
  end

  defp syntax(data) do
    # reason = "lol"
    # {:error, reason}
    try do
      data = Enum.map(data, fn i ->
        reason = "test"
        throw({:error, reason})
      end)
      data
    catch
      {:error, reason} -> {:error, reason}
    end
  end
end
