defmodule Extract do
    def extract_phone_numbers(names_and_numbers_list) do
        numbers = Enum.map(names_and_numbers_list, fn(x) -> Extract.extract_numbers(x) end)
        Enum.filter(numbers, fn(x) -> x != "" end)
    end

    def extract_numbers(names_and_numbers) do
        String.replace(names_and_numbers, ~r/[^0-9]/, "")
    end
end