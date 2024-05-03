defmodule Compiler do
  def compile(fileName) do
    data = String.split(File.read!(fileName), "\n")
    data = Enum.map(data, fn i -> String.trim(i) end)
    # Enum.map(data, fn i ->
    #   if (String.length(i) != 0) do i end
    # end)
    valid =
      with {:ok, data} <- data = lexer(data),
      # preprocessor
      # rest
      do: {:ok}
    case valid do
      {:ok} -> {:ok}
      {:error, reason} -> {:error, reason}
    end
    # Enum.map(data, fn i -> IO.puts i end)
  end

  defp lexer(data) do
    # reason = "lol"
    # {:error, reason}
    try do
      newData = []
      lineNum = 1
      data = Enum.map(data, fn line ->
        a = String.split(line, "")
        newData
        # reason = "test"
        # throw({:error, "syntax error on main.alc:1 -> \"creat text\" -> symbol not found"})
        lineNum = lineNum + 1
      end)
      {:ok, data}
    catch
      {:error, reason} -> {:error, reason}
    end
  end
end
