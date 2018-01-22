defmodule PhoneNumberKata do
  def verify(namesAndNumbers) do
    list_of_numbers = extract_numbers(namesAndNumbers)
    is_consistent(list_of_numbers)
  end

  def extract_numbers(names_and_numbers) do
    line_break_separated_numbers = String.replace(names_and_numbers, ~r/[^0-9\n]/, "")
    String.split(line_break_separated_numbers, "\n\n")
  end

  def is_consistent(listOfNumbers) do
    Enum.all?(listOfNumbers, fn(number) -> 
      !is_prefix(number, listOfNumbers -- [number]) 
    end)
  end

  def is_prefix(number, list) do
    Enum.any?(list, fn(n) -> 
      String.starts_with?(n, number) 
    end)
  end
end
