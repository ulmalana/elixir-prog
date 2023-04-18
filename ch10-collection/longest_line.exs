IO.puts File.read!("/usr/share/dict/README.select-wordlist")
|> String.split
|> Enum.max_by(&String.length/1)
