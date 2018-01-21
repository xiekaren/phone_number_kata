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
  def isConsistent(numbers) do
    Enum.all?(numbers, fn(s) -> !isPrefix(s, numbers) end)
  end

  def isPrefix(number, list) do
    Enum.any?(list, fn(s) -> String.starts_with?(s, number) end)
  end
end
