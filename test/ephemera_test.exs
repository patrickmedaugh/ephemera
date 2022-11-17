defmodule EphemeraTest do
  use ExUnit.Case
  doctest Ephemera

  test "greets the world" do
    assert Ephemera.hello() == :world
  end
end
