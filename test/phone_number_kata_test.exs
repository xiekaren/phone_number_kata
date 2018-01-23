defmodule PhoneNumberKataTest do
  use ExUnit.Case
  test "is consistent" do
    assert PhoneNumberKata.is_consistent(["91125426", "97625921", "921"]) == true
  end

  test "is not consistent" do
    assert PhoneNumberKata.is_consistent(["91125426", "97625992", "911"]) == false
  end

  test "is a prefix of item in list" do
    assert PhoneNumberKata.is_prefix("111", ["123456", "111333"]) == true
  end

  test "is not a prefix of item in list" do
    assert PhoneNumberKata.is_prefix("111", ["123456", "444333"]) == false
  end
end
