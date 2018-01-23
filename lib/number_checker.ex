defmodule NumberChecker do
    def is_consistent(list_of_numbers) do
        Enum.all?(list_of_numbers, fn(number) -> !is_prefix(number, list_of_numbers -- [number]) end)
    end
    
    def is_prefix(number, list_of_numbers) do
        Enum.any?(list_of_numbers, fn(n) -> String.starts_with?(n, number) end)
    end  
end