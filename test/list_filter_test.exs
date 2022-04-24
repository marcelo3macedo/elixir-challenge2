defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the list sum" do
      list = ["1","2","3"]
      response = ListFilter.call(list)
      expect_response = 2

      assert response == expect_response
    end

    test "handle empty list" do
      list = []
      response = ListFilter.call(list)
      expect_response = 0

      assert response == expect_response
    end

    test "mixed values" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      response = ListFilter.call(list)
      expect_response = 3

      assert response == expect_response
    end
  end
end
