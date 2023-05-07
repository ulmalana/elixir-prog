defmodule Evaluator do
  @moduledoc """
  Documentation for `Evaluator`.
  """

  def eval(list_of_expr) do
    {result, _final_binding} = Enum.reduce(list_of_expr, {_result = [], _binding = binding()}, &evaluate_with_binding/2)
    Enum.reverse result
  end

  defp evaluate_with_binding(expr, {result, binding}) do
    {next_result, new_binding} = Code.eval_string(expr, binding)
    { ["value> #{next_result}", "code> #{expr}" | result], new_binding}
  end
end
