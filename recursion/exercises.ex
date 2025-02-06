defmodule Spirit.Recursion do
  @moduledoc """
  Exercises for "Recursion"
  Guide Page: <https://hexdocs.pm/elixir/recursion.html>

  These exercises will get you used to using recursion as a replacement for loop constructs.

  Tip: 
  When building lists in Elixir, prepending items has a time complexity of O(1) while appending
  has a time complexity of O(n). While its better to build lists by prepending, you'll notice
  your list will be in the reverse order you want. You might be tempted to use the appending method 
  in this case, but its still more efficent to build your list by prepending then reversing it when
  complete. This is a consequence of singly-linked lists in a language with immutable data structres.
  """

  @doc """
  Returns the last element in a list.

  ## Examples

      iex> Spirit.Recursion.last([1, 2, 3, 4, 5, 6])
      6
      
      iex> Spirit.Recursion.last([])
      nil
  """
  def last(list) do
  end

  @doc """
  Returns true if the list of integers is sorted in ascending order.

  ## Examples

      iex> Spirit.Recursion.sorted?([1, 2, 3, 4, 5])
      true

      iex> Spirit.Recursion.sorted?([3, 2, 1])
      false
      
      iex> Spirit.Recursion.sorted?([])
      true
  """
  def sorted?(list) do
  end

  @doc """
  Returns the average of a list of numbers.

  ## Examples

      iex> Spirit.Recursion.average([1, 2, 3, 4, 5], 0, 0)
      3.0
      
      iex> Spirit.Recursion.average([1], 0, 0)
      1.0
      
      iex> Spirit.Recursion.average([], 0, 0)
      0
  """
  def average(list, acc, count) do
  end

  @doc """
  Returns a reversed list.

  ## Examples
      
      iex> Spirit.Recursion.reverse([1, 2, 3, 4, 5], [])
      [5, 4, 3, 2, 1]

      iex> Spirit.Recursion.reverse([], [])
      []
  """
  def reverse(list, acc) do
  end

  @doc """
  Returns a list of integers where each integer is squared.

  ## Examples
      
      iex> Spirit.Recursion.square_each([2, 4, 6], [])
      [4, 16, 36]
      
      iex> Spirit.Recursion.square_each([], [])
      []
  """
  def square_each(list, acc) do
  end

  @doc """
  Returns a list with each element set according to "fizzbuzz" rules.

  Rules
  For each element in the original list of integers
  - If divisible by 15 -> :fizzbuzz
  - Else if divisible by 3 -> :fizz
  - Else if divisible by 5 -> :buzz
  - Default -> the original integer

  ## Examples
      
      iex> Spirit.Recursion.fizzbuzz([1, 2, 3, 4, 5], [])
      [1, 2, :fizz, 4, :buzz]
      
      iex> Spirit.Recursion.fizzbuzz([], [])
      []
  """
  def fizzbuzz(list, acc) do
  end

  @doc """
  Returns a list of partial sums. 
  For instance, given [a, b, c], returns [a, a + b, a + b + c].

  ## Examples

      iex> Spirit.Recursion.partial_sums([1, 2, 3, 4], [], 0)
      [1, 3, 6, 10]

      iex> Spirit.Recursion.partial_sums([1], [], 0)
      [1]

      iex> Spirit.Recursion.partial_sums([], [], 0)
      []
  """
  def partial_sums(list, acc, running_sum) do
  end

  @doc """
  Merges 2 sorted lists into a single sorted list

  ## Examples
      
      iex> Spirit.Recursion.merge([1, 3, 5], [2, 4, 6], [])
      [1, 2, 3, 4, 5, 6]
      
      iex> Spirit.Recursion.merge([1, 3, 5], [2, 4, 6, 7], [])
      [1, 2, 3, 4, 5, 6, 7]

      iex> Spirit.Recursion.merge([1, 3, 5], [], [])
      [1, 3, 5]

      iex> Spirit.Recursion.merge([], [2, 4, 6], [])
      [2, 4, 6]

      iex> Spirit.Recursion.merge([], [], [])
      []
  """
  def merge(list_1, list_2, acc) do
  end
end
