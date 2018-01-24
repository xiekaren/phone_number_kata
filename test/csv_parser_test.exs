defmodule CSVParserTest do
    use ExUnit.Case

    test "parse csv to list of numbers" do
        assert Extract.extract_phone_numbers(["Mr Squishy 159 3324 333", "Bob 91 12 54 26"]) == ["1593324333", "91125426"]
    end
end