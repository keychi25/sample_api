defmodule SampleApiTest do
  use ExUnit.Case
  doctest SampleApi

  test "greets the world" do
    assert SampleApi.hello() == :world
  end
end
