defmodule PhoneNumberKata do
  def verify(namesAndNumbers) do
    list_of_numbers = NumberExtractor.extract_numbers(namesAndNumbers)
    isConsistent(list_of_numbers)
  end

  def isConsistent(listOfNumbers) do
    Enum.all?(listOfNumbers, fn(number) -> 
      !isPrefix(number, listOfNumbers -- [number]) 
    end)
  end

  def isPrefix(number, list) do
    Enum.any?(list, fn(n) -> 
      String.starts_with?(n, number) 
    end)
  end
end
