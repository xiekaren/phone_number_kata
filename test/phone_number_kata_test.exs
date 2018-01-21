defmodule PhoneNumberKataTest do
  use ExUnit.Case

  test "is a prefix in list" do
    assert PhoneNumberKata.isPrefix("123", ["123456", "456"]) == true
  end

  test "is not prefix in list 1" do
    assert PhoneNumberKata.isPrefix("123", ["456123", "456"]) == false
  end

  test "is not a prefix in list 2" do
    assert PhoneNumberKata.isPrefix("123", ["456", "789"]) == false
  end

  test "is not consistent" do
    assert PhoneNumberKata.isConsistent(["91 12 54 26", "97 625 992", "911"]) == false
  end
end
