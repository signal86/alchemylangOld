defmodule AlchemylangTest do
  use ExUnit.Case
  doctest Alchemylang

  test "greets the world" do
    assert Alchemylang.hello() == :world
  end
end
