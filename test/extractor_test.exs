defmodule ExtractorTest do
  use ExUnit.Case
  test "extracts numbers without symbols" do
    assert Extractor.extract_numbers(
      [
        %{"Name" => "Mrs Warm", "Phone Number" => "111 222 333"},
        %{"Name" => "Mr Fuzzy", "Phone Number" => "444-555 666"},
        %{"Name" => "Miss Squishy", "Phone Number" => "777 888-999"},        
      ]
    ) == ["111222333", "444555666", "777888999"]
  end

  test "extracts numbers without symbols and does not include numbers in names" do
    assert Extractor.extract_numbers(
      [
        %{"Name" => "Amrit K2", "Phone Number" => "111 222 333"},
        %{"Name" => "Chester B0", "Phone Number" => "444-555 666"},
        %{"Name" => "Nick Y3", "Phone Number" => "777 888-999"},        
      ]
    ) == ["111222333", "444555666", "777888999"]
  end
end
