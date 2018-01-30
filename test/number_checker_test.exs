defmodule NumberCheckerTest do
    use ExUnit.Case
    test "is consistent when no number is a prefix of another" do
      assert NumberChecker.is_consistent(["91125426", "97625921", "921"]) == true
    end

    test "is consistent even when a number is contained within another" do
      assert NumberChecker.is_consistent(["111", "123456", "6611166"]) == true
    end

    test "is consistent even when a number is a postfix of another" do
      assert NumberChecker.is_consistent(["111", "123456", "444111"]) == true
    end
  
    test "is not consistent when a number is a prefix of another" do
      assert NumberChecker.is_consistent(["91125426", "97625992", "911"]) == false
    end

    test "is not consistent when a number is the same as another" do
      assert NumberChecker.is_consistent(["911", "97625992", "911"]) == false
    end
end