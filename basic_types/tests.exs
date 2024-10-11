defmodule Spirit.BasicTypesTest do
  use ExUnit.Case

  test "simple_tuple/0" do
    result = Spirit.BasicTypes.simple_tuple()

    assert {atom, list} = result
    assert atom == :ok
    assert list == [1, 2]
  end

  test "format_percentage/1" do
    result = Spirit.BasicTypes.format_percentage(0.5)

    assert result == "50%"

    result = Spirit.BasicTypes.format_percentage(-1.236)

    assert result == "-124%"
  end

  test "opposites?/2" do
    assert Spirit.BasicTypes.opposites?(true, false) == true
    assert Spirit.BasicTypes.opposites?(nil, []) == true
    assert Spirit.BasicTypes.opposites?(1, "hi") == false
  end

  test "boolean_opposites?/2" do
    assert Spirit.BasicTypes.boolean_opposites?(true, false) == true

    assert_raise BadBooleanError, fn ->
      Spirit.BasicTypes.boolean_opposites?(nil, [])
    end

    assert_raise BadBooleanError, fn ->
      Spirit.BasicTypes.boolean_opposites?(1, "hi")
    end
  end

  test "shout/1" do
    assert Spirit.BasicTypes.shout("hi") == "HI!"
  end
end
