defmodule PhoneNumberKata do
  import CSVParser
  import Extractor
  import NumberChecker

  def verify(file_path) do
    names_and_numbers = to_name_number_list(file_path)
    numbers = extract_numbers(names_and_numbers)
    is_consistent(numbers)
  end
end
