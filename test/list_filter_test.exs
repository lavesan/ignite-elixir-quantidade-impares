defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "gets quantity of odds" do
      assert ListFilter.call([7, 21, 20, "45", "1", "2", "4321"])
    end
  end
end
