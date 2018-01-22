defmodule NumberExtractor do
    def extract_numbers(names_and_numbers) do
        line_break_separated_numbers = String.replace(names_and_numbers, ~r/[^0-9\n]/, "")
        String.split(line_break_separated_numbers, "\n\n")
    end
end