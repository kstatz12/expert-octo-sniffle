defmodule EosTaskServerTest do
  use ExUnit.Case
  doctest EosTaskServer

  test "greets the world" do
    assert EosTaskServer.hello() == :world
  end
end
