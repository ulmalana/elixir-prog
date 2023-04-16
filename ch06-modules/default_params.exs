defmodule DefParams do
  def func(p1, p2 \\ 2, p3 \\ 3, p4) do
    IO.inspect [p1, p2, p3, p4]
  end
end

DefParams.func("a", "b")
DefParams.func("a", "b", "c")
DefParams.func("a", "b", "c", "d")
