defmodule LineSigil do

  @doc """
  Implement ~l as line sigil.
  """

  def sigil_l(lines, _opts) do
    lines |> String.trim_trailing |> String.split("\n")
  end
end

defmodule Example do
  import LineSigil

  def lines do
    ~l"""
    line 1
    line 2
    anohter line in #{__MODULE__}
    """
  end
end

IO.inspect Example.lines
