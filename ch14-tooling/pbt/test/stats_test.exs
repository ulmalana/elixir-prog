defmodule TestStats do
  use ExUnit.Case

  test "calculates sum" do
    list = [1,3,5,7,9]
    assert Stats.sum(list) == 25
  end

  test "calculates count" do
    list = [1,3,5,7,9]
    assert Stats.count(list) == 5
  end

  test "calculates average" do
    list = [1,3,5,7,9]
    assert Stats.average(list) == 5
  end
end
