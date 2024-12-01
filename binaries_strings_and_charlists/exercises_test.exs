defmodule Spirit.BinariesStringsAndCharlistsTest do
  use ExUnit.Case

  doctest Spirit.BinariesStringsAndCharlists

  alias Spirit.BinariesStringsAndCharlists

  describe "Binaries, strings, and charlists Tests" do
    test "first_char/1" do
      input = "🔥 fire 🔥"
      assert BinariesStringsAndCharlists.first_char(input) == "🔥"

      input = ""
      assert is_nil(BinariesStringsAndCharlists.first_char(input))

      input = 123
      assert_raise FunctionClauseError, fn -> BinariesStringsAndCharlists.first_char(input) end
    end

    test "describe_string/1" do
      input = "🔥 fire 🔥"
      expected = %{n_chars: 8, first_char: "🔥", byte_size: 14}

      assert BinariesStringsAndCharlists.describe_string(input) == expected
    end

    test "simple_binary/0" do
      assert BinariesStringsAndCharlists.simple_binary() == "elixir"
    end

    test "simple_bitstring/0" do
      assert BinariesStringsAndCharlists.simple_bitstring() == <<5::3>>
    end

    test "second_bit_is_one?/1" do
      assert not BinariesStringsAndCharlists.second_bit_is_one?("1")
      assert_raise MatchError, fn -> BinariesStringsAndCharlists.second_bit_is_one?("") end
    end
    
    test "simple_charlist/0" do
      assert BinariesStringsAndCharlists.simple_charlist() == ~c"elixir"
    end

    test "switch_string_and_charlist/1" do
      c = ~c"ok 👌"
      assert BinariesStringsAndCharlists.switch_string_and_charlist(c) == "ok 👌"

      c = ~c""
      assert BinariesStringsAndCharlists.switch_string_and_charlist(c) == ""

      s = "ok 👌"
      assert BinariesStringsAndCharlists.switch_string_and_charlist(s) == ~c"ok 👌"

      s = ""
      assert BinariesStringsAndCharlists.switch_string_and_charlist(s) == ~c""
    end
      
  end
end
