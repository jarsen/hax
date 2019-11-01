defmodule HaxTest do
  use ExUnit.Case
  doctest Hax

  test "greets the world" do
    assert Hax.hello() == :world
  end
end
