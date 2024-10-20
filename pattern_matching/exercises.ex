defmodule Spirit.Exercises.PatternMatching do
  @moduledoc """
  Exercises for "Pattern Matching"
  Guide Page: <https://hexdocs.pm/elixir/pattern-matching.html>

  Exercises to practice using `=` in basic pattern matching. 

  Please note:
  - If you haven't noticed in the documentation, the return value of a pattern
  matching expression is the value on the right side of the `=` operator. Keep
  that in mind when solving the exercises and checking the tests.
  - Try to use pattern matching in every function, even if it can be solved in
  other ways.

  """

  @doc """
  Uses pattern matching to check if the given value is 42.

  ## Examples

      iex> Spirit.Exercises.PatternMatching.match_with_42(42)
      42

  """
  def match_with_42(val) do
  end

  @doc """
  Uses pattern matching to ensure two values are equal to each other.

      iex> Spirit.Exercises.PatternMatching.match_values(10, 10)
      10

  """
  def match_values(val_1, val_2) do
  end

  @doc """
  Returns the first element of a two-tuple.

  ## Examples

      iex> t = {:ok, "hello"}
      iex> Spirit.Exercises.PatternMatching.first_of_two_tuple(t)
      :ok

  """
  def first_of_two_tuple(tuple) do
  end

  @doc """
  Returns the value from a "result" tuple that has the form of `{:ok, value}`.

  ## Examples

      iex> t = {:ok, "hello"}
      iex> Spirit.Exercises.PatternMatching.get_result_value(t)
      "hello"

  """
  def get_result_value(tuple) do
  end

  @doc """
  Converts a list of length 3 to a tuple.

  ## Examples

      iex> l = ["x", "y", "z"]
      iex> Spirit.Exercises.PatternMatching.list_to_three_tuple(l)
      {"x", "y", "z"}

  """
  def list_to_three_tuple(tuple) do
  end

  @doc """
  Returns the head and tail of a list in a two-tuple.

  ## Examples

      iex> l = ["x", "y", "z"]
      iex> Spirit.Exercises.PatternMatching.head_and_tail(l)
      {"x", ["y", "z"]}

  """
  def head_and_tail(list) do
  end
end
