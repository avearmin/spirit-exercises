defmodule Spirit.Exercises.AnonymousFunctionsTest do
  use ExUnit.Case

  doctest Spirit.Exercises.AnonymousFunctions

  alias Spirit.Exercises.AnonymousFunctions

  describe "Anonymous functions Tests" do
    test "create_incrementer/1" do
      inc = AnonymousFunctions.create_incrementer(4)
      assert inc.(3) == 7
    end

    test "create_error_logger/0" do
      logger = AnonymousFunctions.create_error_logger()
      assert logger.("bad request") == "[ERROR] bad request"
    end

    test "create_success_logger/0" do
      logger = AnonymousFunctions.create_success_logger()
      assert logger.("file created") == "[SUCCESS] file created"
    end

    test "log_result/1" do
      tuple = {:ok, "file created"}
      assert AnonymousFunctions.log_result(tuple) == "[SUCCESS] file created"

      tuple = {:error, "bad request"}
      assert AnonymousFunctions.log_result(tuple) == "[ERROR] bad request"
    end
  end
end
