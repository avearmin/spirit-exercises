defmodule Spirit.RecursionTest do
  use ExUnit.Case

  doctest Spirit.Recursion

  alias Spirit.Recursion

  describe "Recursion Tests" do
    test "last/1" do
      assert Recursion.last([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == 0
    end

    test "square_each/1" do
      assert Recursion.square_each([5, 10, 15, 20]) == [25, 100, 225, 400]
    end

    test "sorted/1" do
      assert Recursion.sorted?([1, 2, 3, 13, 4]) == false
    end

    test "average/1" do
      assert Recursion.average([10, 11, 20, 35]) == 19 
    end

    test "fizzbuzz/1" do
      assert Recursion.fizzbuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 15]) == [
        1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :fizzbuzz
      ]
    end

    test "reverse/1" do
      assert Recursion.reverse([5, 4, 3, 2, 1, 0]) == [0, 1, 2, 3, 4, 5]
    end

    test "partial_sums/1" do
      assert Recursion.partial_sums([1, 5, 10, 20]) == [1, 6, 16, 36]
    end

    test "merge/2" do
      assert Recursion.fizzbuzz([1, 4, 10], [0, 4, 9, 11]) == [0, 1, 4, 4, 9, 10, 11]
    end
  end
end
