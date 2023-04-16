defmodule Example1 do
  @author "Riz Maulana"
  def get_author do
    @author
  end

  @attr "one"
  def first, do: @attr

  @attr "two"
  def second, do: @attr

end


IO.puts "Example1 was written by #{Example1.get_author}"

IO.puts "#{Example1.second} #{Example1.first}"
