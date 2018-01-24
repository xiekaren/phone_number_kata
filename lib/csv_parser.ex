defmodule CSVParser do
    def to_name_number_list(file_path) do
        CSV.decode!(File.stream!(file_path), headers: true) |> Enum.to_list
    end
end