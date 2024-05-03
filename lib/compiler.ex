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

  # syntax checking & lexizing
  defp lexer(data) do
    # reason = "lol"
    # {:error, reason}
    try do
      newData = [] # newData is the lexized/tokenized data
      # lines
      lineNum = 0
      Enum.map(data, fn line ->
        wordList = String.split(line, " ")
        # individual words
        wordNum = 0
        Enum.map(wordList, fn keyword ->
          # Reserved keywords
          # global, var, const, signal, meta, view, create, redirect, on, end, if
          # DATA STRUCTURE of returned data
          # 3 dimensional arrays ?! !!? [[line, [tokens]], [line, [tokens]]] -> etc
          case keyword do
            "global" ->
              # logic
            "var" ->
              # logic
            "const" ->
              # logic
            "signal" ->
              # logic
            "meta" ->
              # logic
            "view" ->
              # logic
            "create" ->
              # logic
            "redirect" ->
              # logic
            "on" ->
              # logic
            "end" ->
              # logic
            "if" ->
              # logic
          end
          wordNum = wordNum + 1
        end)
        # newData
        # reason = "test"
        # throw({:error, "syntax error on main.alc:1 -> \"creat text\" -> symbol not found"})
        # error line = lineNum + 1
        lineNum = lineNum + 1
      end)
      data = newData
      {:ok, data}
    catch
      {:error, reason} -> {:error, reason}
    end
  end
end
