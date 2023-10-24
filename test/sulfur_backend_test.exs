defmodule SulfurBackendTest do
  use ExUnit.Case
  doctest SulfurBackend

  test "greets the world" do
    assert SulfurBackend.hello() == :world
  end
end
