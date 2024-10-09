defmodule BasicTypes.BasicTypesTest do
  use ExUnit.Case
  doctest Spirit.BasicTypes

  test "simple_tuple/0" do
    tuple = Spirit.BasicTypes.simple_tuple()

    assert is_tuple(tuple)
    assert tuple_size(tuple) == 2

    {atom, string} = tuple

    assert atom == :ok
    assert string == "spirit"
  end

  test "to_percentage/1" do
    assert is_integer(Spirit.BasicTypes.to_percentage(0.5))
  end
end
