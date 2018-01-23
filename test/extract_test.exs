defmodule ExtractTest do
  use ExUnit.Case

  test "extract phone numbers from list" do
    assert Extract.extract_phone_numbers(["Mr Squishy 159 3324 333", "Bob 91 12 54 26"]) == ["1593324333", "91125426"]
  end

  test "extract phone numbers from list with weird symbols" do
    assert Extract.extract_phone_numbers(["Mr Squishy 159-3324, 333", "Bob $91-1&2  54 26"]) == ["1593324333", "91125426"]
  end

end
