defmodule PhoneNumberKataTest do
  use ExUnit.Case

  test "verify input" do
    assert PhoneNumberKata.verify(
      "Bob 91 12 54 26\n
      Alice 97 625 992\n  
      Emergency 911"
      ) == false
  end

  test "verify input 2" do
    assert PhoneNumberKata.verify(
      "Bob,91-12-54 26\n
      Alice,97 625-992\n  
      Emergency 911"
      ) == false
  end

  test "is not consistent" do
    assert PhoneNumberKata.isConsistent(["91125426", "97625992", "911"]) == false
  end

  test "is consistent" do
    assert PhoneNumberKata.isConsistent(["91125426", "97625921", "921"]) == true
  end

  test "is a prefix of item in list" do
    assert PhoneNumberKata.isPrefix("111", ["123456", "111333"]) == true
  end

  test "is not a prefix of item in list" do
    assert PhoneNumberKata.isPrefix("111", ["123456", "444333"]) == false
  end
end
