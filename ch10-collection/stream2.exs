IO.puts File.open!("/usr/share/dict/README.select-wordlist")
|> IO.stream(:line)
|> Enum.max_by(&String.length/1)

# or

IO.puts File.stream!("/usr/share/dict/README.select-wordlist") |> Enum.max_by(&String.length/1)
