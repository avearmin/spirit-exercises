defmodule Spirit.CaseCondAndIf do
  @moduledoc """
  Exercises for "case, cond, and if"
  Guide Page: <https://hexdocs.pm/elixir/case-cond-and-if.html>

  More practice with pattern matching using `case` expressions as well as
  conditionals with `cond` and `if`.

  """

  @doc """
  Checks the input tuple which represents the result of an operation:
  - For `{:ok, value}`, returns `:ok`
  - For `{:error, value}` returns `:error`
  - For any other value, returns `:invalid_input`

  """
  def check_result(result) do
  end

  @doc """
  Check a list's head:
  - If the head is a number (integer or float), returns `{:ok, :number}`
  - If the head is not a number, returns `{:ok, :not_a_number}`
  - If the list is empty, returns `{:error, :empty_list}`
  - For any other input, returns `{:error, :invalid_input}`

  """
  def check_list_head(list) do
  end

  @doc """
  Given a string in the form of `"Bearer TOKEN"` where TOKEN is a random
  string, returns `{:ok, "TOKEN"}`. For any other input type/pattern, returns
  `{:error, :invalid_input}`.

  HINT: You can use the string concatenation operator `<>` in pattern matching
  to match against a fixed string prefix. 

  ## Examples

      iex> valid_header = "Bearer Ug+H2dqRHpE"
      iex> Spirit.CaseCondAndIf.extract_bearer_token(valid_header)
      {:ok, "Ug+H2dqRHpE"}

      iex> invalid_header = "oops"
      iex> Spirit.CaseCondAndIf.extract_bearer_token(invalid_header)
      {:error, :invalid_header}

  """
  def extract_bearer_token(header_string) do
  end

  @doc """
  Given a number, returns whether it is odd or even as an atom.

  Raises if the argument is not a number.

  ## Examples

      iex> Spirit.CaseCondAndIf.odd_or_even(42)
      :even

      iex> Spirit.CaseCondAndIf.odd_or_even(333)
      :odd

  """
  def odd_or_even(number) do
  end

  @doc """
  Applies "Fizz Buzz" on a single number:
  - If divisible by 3, returns `:fizz`
  - If divisible by 5, returns `:buzz`
  - If divisible by 15, returns `:fizzbuzz`
  - For any other number, returns the number as-is

  Raises if the argument is not a number.

  ## Examples

    iex> Spirit.CaseCondAndIf.fizz_buzz(12)
    :fizz

    iex> Spirit.CaseCondAndIf.fizz_buzz(5)
    :buzz

    iex> Spirit.CaseCondAndIf.fizz_buzz(15)
    :fizzbuzz

    iex> Spirit.CaseCondAndIf.fizz_buzz(16)
    16

  """
  def fizz_buzz(number) do
  end
end
