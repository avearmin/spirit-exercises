defmodule Spirit.BasicTypes do
  @moduledoc """
  Exercises for "Basic Types"
  Guide Page: <https://hexdocs.pm/elixir/basic-types.html>

  Simple exercises for a simple guide, but they should get you used to basic
  Elixir syntax and data structures.

  """

  @doc """
  Returns a tuple with two elements:
  - The atom `:ok`
  - A list with the numbers 1 and 2

  """
  def simple_tuple() do
  end

  @doc """
  Converts the given proportion to a percentage, rounded to nearest integer,
  and formats it as a string with the percent sign.

  ## Examples

      iex> Spirit.BasicTypes.format_percentage(0.5)
      iex> "50%"

      iex> Spirit.BasicTypes.format_percentage(-1.236)
      iex> "-124%"

  """
  def format_percentage(proportion) do
  end

  @doc """
  Checks if one argument is truthy and the other is falsy.

  ## Examples

      iex> Spirit.BasicTypes.opposites?(true, false)
      true

      iex> Spirit.BasicTypes.opposites?(nil, [])
      true

      iex> Spirit.BasicTypes.opposites?(1, "hi")
      false

  """
  def opposites?(a, b) do
  end

  @doc """
  Checks if one argument is `true` and other other is `false`.

  Raises if non-boolean arguments are given.

  ## Examples

      iex> Spirit.BasicTypes.boolean_opposites?(true, false)
      true

  """
  def boolean_opposites?(a, b) do
  end

  @doc """
  Converts the given string to uppercase and appends an exclamation mark at the
  end.

      iex> Spirit.BasicTypes.shout("yes")
      "YES!"

  """
  def shout(string) do
  end
end
