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
    # Enum.map(data, fn i -> IO.puts i end)
  end

  defp syntax(data) do
    # reason = "lol"
    # {:error, reason}
    try do
      data = Enum.map(data, fn i ->
        i
        # reason = "test"
        # throw({:error, "syntax error on main.alc:1 -> \"creat text\" -> symbol not found"})
      end)
      {:ok, data}
    catch
      {:error, reason} -> {:error, reason}
    end
  end
end
