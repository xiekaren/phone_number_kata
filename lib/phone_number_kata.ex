defmodule PhoneNumberKata do
  import Extract

  def verify(file_path) do
    names_and_numbers = File.stream!(file_path)
    numbers = extract_phone_numbers(names_and_numbers)
    is_consistent(numbers)
  end

  def is_consistent(list_of_numbers) do
    Enum.all?(list_of_numbers, fn(number) -> !is_prefix(number, list_of_numbers -- [number]) end)
  end

  def is_prefix(number, list) do
    Enum.any?(list, fn(n) -> 
      String.starts_with?(n, number) 
    end)
  end  
end
