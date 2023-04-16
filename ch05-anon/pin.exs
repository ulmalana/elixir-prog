defmodule Greeter do
  def for(name, greeting) do
          fn
            (^name) -> "#{greeting} #{name}"
            (_) -> "I dont know you"
          end
  end
end

mr_valim = Greeter.for("Jose", "HOI")

IO.puts mr_valim.("Jose")
IO.puts mr_valim.("Dave")
