defmodule Extractor do
    def extract_numbers(name_number_maps) do
        numbers = Enum.map(name_number_maps, fn(x) -> x["Phone Number"] end)
        Enum.map(numbers, fn(x) -> remove_non_numbers(x) end)
    end

    def remove_non_numbers(unclean_numbers) do
        String.replace(unclean_numbers, ~r/[^0-9]/, "")
    end
end