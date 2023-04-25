defmodule Issues.CLI do
  @default_count 4

  @moduledoc """
  Handle the CLI parsing and dispatch to various functions.
  """

  def run(argv) do
    argv
    |> parse_args
    |> process
  end

  @doc """
  `argv` can be -h or --help, which returns :help.
  Otherwise it is a github username, project name, and optionally number of entries.
  """
  def parse_args(argv) do
    OptionParser.parse(argv, switches: [help: :boolean], aliases: [h: :help])
    |> elem(1)
    |> args_to_internal_representation()
  end

  def args_to_internal_representation([user, project, count]) do
    {user, project, String.to_integer(count)}
  end

  def args_to_internal_representation([user, project]) do
    {user, project, @default_count}
  end

  def args_to_internal_representation(_) do
    :help
  end

  def process(:help) do
    IO.puts """
    usage: issues <user> <project> [ count | #{@default_count} ]
    """
  end

  def process({user, project, _count}) do
    Issues.GithubIssues.fetch(user, project)
  end
end
