defmodule PhoneNumberKata do
  @moduledoc """
  Documentation for PhoneNumberKata.
  """

  @doc """
  Hello world.

  ## Examples

      iex> PhoneNumberKata.hello
      :world

  """
  def isConsistent(namesAndNumbers) do
    listOfNumbers = extractNumbers(namesAndNumbers)
    Enum.all?(listOfNumbers, fn(number) -> 
      !isPrefix(number, listOfNumbers -- [number]) 
    end)
  end

  def extractNumbers(namesAndNumbers) do
    lineBreakSeparatedNumbers = String.replace(namesAndNumbers, ~r/[^0-9\n]/, "")
    String.split(lineBreakSeparatedNumbers, "\n\n")
  end

  def isPrefix(number, list) do
    Enum.any?(list, fn(n) -> 
      String.starts_with?(n, number) 
    end)
  end
end
