defmodule NumberCheckerTest do
    use ExUnit.Case
    test "is consistent when a number is a prefix of another" do
      assert NumberChecker.is_consistent(["91125426", "97625921", "921"]) == true
    end
  
    test "is not consistent when no numbers are prefixes of each other" do
      assert NumberChecker.is_consistent(["91125426", "97625992", "911"]) == false
    end
  
    test "string is a prefix of an item in the list" do
      assert NumberChecker.is_prefix("111", ["123456", "111333"]) == true
    end
  
    test "string is not a prefix of any item in the list" do
      assert NumberChecker.is_prefix("111", ["123456", "444111"]) == false
    end
end