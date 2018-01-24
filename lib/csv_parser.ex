defmodule CSVParser do
    import Extract

    def phonebook_to_numbers(file_path) do
        names_and_numbers = CSV.decode!(File.stream!(file_path), headers: true) |> Enum.to_list
        numbers = Enum.map(names_and_numbers, fn(x) -> x["Phone Number"] end)
        extract_phone_numbers(numbers)
    end
end