defmodule Users do
  riz = %{name: "Riz", state: "JKT", likes: "Elixir"}
  case riz do
    %{state: some_state} = person ->
      IO.puts "#{person.name} lives in #{some_state}"
    _ -> IO.puts "No matches"
  end
end
