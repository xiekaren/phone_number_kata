defmodule Extractor do
    def extract_numbers(name_number_maps) do
        numbers = Enum.map(name_number_maps, fn(x) -> x["Phone Number"] end)
        clean_numbers(numbers)
    end
   
    def clean_numbers(numbers) do
        Enum.map(numbers, fn(x) -> remove_non_numbers(x) end)
    end

    def remove_non_numbers(names_and_numbers) do
        String.replace(names_and_numbers, ~r/[^0-9]/, "")
    end
end