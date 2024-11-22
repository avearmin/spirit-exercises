defmodule Spirit.CaseCondAndIfTest do
  use ExUnit.Case

  doctest Spirit.CaseCondAndIf

  alias Spirit.CaseCondAndIf

  describe "case, cond, and if Tests" do
    test "check_result/1" do
      assert CaseCondAndIf.check_result({:ok, "good to go"}) == :ok
      assert CaseCondAndIf.check_result({:error, :enomem}) == :error
      assert CaseCondAndIf.check_result({:enomem}) == :invalid_input
    end

    test "check_list_head/1" do
      assert CaseCondAndIf.check_list_head([1, 2]) == {:ok, :number}
      assert CaseCondAndIf.check_list_head(["hello"]) == {:ok, :not_a_number}
      assert CaseCondAndIf.check_list_head([]) == {:error, :empty_list}
      assert CaseCondAndIf.check_list_head(:oops) == {:error, :invalid_input}
    end

    test "odd_or_even/1" do
      assert CaseCondAndIf.odd_or_even(1) == :odd
      assert CaseCondAndIf.odd_or_even(10) == :even
      assert_raise ArithmeticError, fn -> CaseCondAndIf.odd_or_even("bad") end
    end

    test "fizz_buzz/1" do
      assert CaseCondAndIf.fizz_buzz(1) == 1
      assert CaseCondAndIf.fizz_buzz(10) == :buzz
      assert CaseCondAndIf.fizz_buzz(21) == :fizz
      assert CaseCondAndIf.fizz_buzz(30) == :fizzbuzz
      assert_raise ArithmeticError, fn -> CaseCondAndIf.fizz_buzz("bad") end
    end

    test "extract_bearer_token/1" do
      valid_header = "Bearer g8r6+LXS1UP4XhTBVAm4I"
      assert CaseCondAndIf.extract_bearer_token(valid_header) == {:ok, "g8r6+LXS1UP4XhTBVAm4I"}

      invalid_header = ""
      assert CaseCondAndIf.extract_bearer_token(invalid_header) == {:error, :invalid_header}

      invalid_header = :no
      assert CaseCondAndIf.extract_bearer_token(invalid_header) == {:error, :invalid_header}
    end
  end
end
