defmodule PhoneNumberKata do
  import Extract
  import NumberChecker

  def verify(file_path) do
    names_and_numbers = File.stream!(file_path)
    numbers = extract_phone_numbers(names_and_numbers)
    is_consistent(numbers)
  end
end
