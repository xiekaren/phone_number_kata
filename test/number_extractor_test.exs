defmodule NumberExtractorTest do
    use ExUnit.Case

    test "convert names and numbers to list of numbers without whitespace 1" do
        assert NumberExtractor.extract_numbers(
        "Bob 91 12 54 26\n
        Alice 97 625 992\n  
        Emergency 911"
        ) == ["91125426", "97625992", "911"]
    end

    test "convert names and numbers to list of numbers without whitespace 2" do
        assert NumberExtractor.extract_numbers(
        "Mark Pearl 123-456\n
        Darren Sim 111-333\n  
        Grads 111"
        ) == ["123456", "111333", "111"]
    end
end