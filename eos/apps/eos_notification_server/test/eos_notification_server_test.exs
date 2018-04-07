defmodule EosNotificationServerTest do
  use ExUnit.Case
  doctest EosNotificationServer

  test "greets the world" do
    assert EosNotificationServer.hello() == :world
  end
end
