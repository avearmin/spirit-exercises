defmodule Spirit.Exercises.PatternMatchingTest do
  use ExUnit.Case

  doctest Spirit.Exercises.PatternMatching

  alias Spirit.Exercises.PatternMatching

  describe "Lists and Tuples Tests" do
    test "match_with_42/1" do
      assert PatternMatching.match_with_42(42) == 42
      assert_raise MatchError, fn -> PatternMatching.match_with_42(false) end
    end

    test "match_values/2" do
      assert PatternMatching.match_values(10, 10) == 10
      assert_raise MatchError, fn -> PatternMatching.match_values(10, 9) end
      assert_raise MatchError, fn -> PatternMatching.match_values(9, 10) end
    end

    test "first_of_two_tuple/1" do
      tuple_1 = {:error, :enoent}
      assert PatternMatching.first_of_two_tuple(tuple_1) == :error

      tuple_2 = {:no}
      assert_raise MatchError, fn -> PatternMatching.first_of_two_tuple(tuple_2) end
    end

    test "get_result_value/1" do
      tuple_1 = {:ok, [1, 2]}
      assert PatternMatching.get_result_value(tuple_1) == [1, 2]

      tuple_2 = {:error, :enoent}
      assert_raise MatchError, fn -> PatternMatching.get_result_value(tuple_2) end

      tuple_3 = {:error}
      assert_raise MatchError, fn -> PatternMatching.get_result_value(tuple_3) end
    end

    test "list_to_three_tuple/1" do
      list_1 = ["hello", :world, 0]
      assert PatternMatching.list_to_three_tuple(list_1) == {"hello", :world, 0}

      list_2 = ["hello", :world, 0, 1]
      assert_raise MatchError, fn -> PatternMatching.list_to_three_tuple(list_2) end
    end

    test "head_and_tail/1" do
      list_1 = ["hello"]
      assert PatternMatching.head_and_tail(list_1) == {"hello", []}

      list_2 = []
      assert_raise MatchError, fn -> PatternMatching.head_and_tail(list_2) end
    end
  end
end
