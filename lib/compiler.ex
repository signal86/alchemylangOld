defmodule Compiler do
  @fileName
  def compile(fileNameIn) do
    @fileName = fileNameIn
    data = String.split(File.read!(@fileName), "\n")
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
      blockNum = 0
      architecture = "none"
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
            # architecture blocks
            v when v in ["meta", "view", "components", "global_modifiers"] ->
              if architecture == "none" do architecture = keyword
              else throw({:error, "syntax error on #{@fileName}:#{lineNum} -> #{line} -> architecture block overlap"}) end
              tempBlockNum = blockNum
              found = false
              if Enum.at(line, wordNum + 1) == "{" do
                Enum.map(Enum.reverse(data), fn line2 ->
                  Enum.map(String.split(line2, " "), fn keyword2 ->
                    if keyword2 == "}" do
                      if tempBlockNum > 0 do
                        tempBlockNum = tempBlockNum - 1
                      else
                        blockNum = blockNum + 1
                        found = true
                      end
                    end
                  end)
                end)
              else throw({:error, "syntax error on #{@fileName}:#{lineNum} -> #{line} -> architecture block not found"}) end
              unless found do throw({:error, "syntax error on #{@fileName}:#{lineNum} -> #{line} -> architecture block left incomplete"}) end
            # "{" ->
            #   # logic
            "}" ->
              if architecture == "none" do throw({:error, "syntax error on #{@fileName}:#{lineNum} -> #{line} -> architecture block not found"}) else architecture = "none" end
            "global" ->
              # logic
            "var" ->
              # logic
            "const" ->
              # logic
            "signal" ->
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
            _ ->
              # default logic
          end
          wordNum = wordNum + 1
        end)
        lineNum = lineNum + 1
        # newData
        # reason = "test"
        # throw({:error, "syntax error on main.alc:1 -> \"creat text\" -> symbol not found"})
        # error line = lineNum + 1
      end)
      data = newData
      {:ok, data}
    catch
      {:error, reason} -> {:error, reason}
    end
  end
end
