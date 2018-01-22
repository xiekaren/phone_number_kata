defmodule PhoneNumberKata do
  def verify(namesAndNumbers) do
    list_of_numbers = extractNumbers(namesAndNumbers)
    isConsistent(list_of_numbers)
  end

  def extractNumbers(namesAndNumbers) do
    lineBreakSeparatedNumbers = String.replace(namesAndNumbers, ~r/[^0-9\n]/, "")
    String.split(lineBreakSeparatedNumbers, "\n\n")
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
