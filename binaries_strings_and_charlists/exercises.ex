defmodule Spirit.Exercises.BinariesStringsAndCharlists do
  @moduledoc """
  Exercises for "Binaries, strings, and charlists"
  Guide Page: <https://hexdocs.pm/elixir/binaries-strings-and-charlists.html>

  These exercises will help you get used to how Elixir handles strings and the
  underlying data structures.

  """

  @doc """
  Returns the first character of a non-empty string or `nil` for an empty
  string.

  ## Examples

      iex> s = "ok"
      iex> Spirit.Exercises.BinariesStringsAndCharlists.first_char(s)
      iex> "o"

      iex> s = ""
      iex> Spirit.Exercises.BinariesStringsAndCharlists.first_char(s)
      iex> nil

  """
  def first_char(str) do
  end

  @doc """
  Returns a map containing some information about the given string:
  - Number of characters, with the key `:n_chars`
  - Byte size, with the key `:byte_size`
  - First character, with the key `:first_char`

  ## Examples

      iex> s = "hello 👋"
      iex> Spirit.Exercises.BinariesStringsAndCharlists.describe_string(s)
      %{n_chars: 7, byte_size: 10, first_char: "h"}

  """
  def describe_string(str) do
  end

  @doc """
  Returns a binary containing the bytes: 101, 108, 105, 120, 105, 114

  """
  def simple_binary() do
  end

  @doc """
  Returns a bitstring containing the bits: 1, 0, 1

  """
  def simple_bitstring() do
  end

  @doc """
  Returns `true` if the second bit of the given binary/bitstring is 1.

  Hint: it wasn't mentioned in the documentation, but in pattern matching, you
  can not only use `rest::binary` but also `rest::bitstring`.

  ## Examples 

      iex> b = <<1::1, 0::1>>
      iex> Spirit.Exercises.BinariesStringsAndCharlists.second_bit_is_one?(b)
      iex> false

      iex> b = "a"
      iex> Spirit.Exercises.BinariesStringsAndCharlists.second_bit_is_one?(b)
      iex> true

  """
  def second_bit_is_one?(bitstring) do
  end

  @doc """
  Returns a charlist containing the characters for "elixir".

  """
  def simple_charlist() do
  end

  @doc """
  Converts strings to charlists and vice versa.

  ## Examples

      iex> c = ~c"hi"
      iex> Spirit.Exercises.BinariesStringsAndCharlists.switch_string_and_charlist(c)
      iex> "hi"

      iex> s = "hi"
      iex> Spirit.Exercises.BinariesStringsAndCharlists.switch_string_and_charlist(s)
      iex> ~c"hi"

  """
  def switch_string_and_charlist(text) do
  end
end
