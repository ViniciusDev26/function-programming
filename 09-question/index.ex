defmodule Main do
  def input(message) do
    IO.gets(message) |> String.trim() |> String.to_integer()
  end

  def sum(value1, value2) do
    value1 + value2
  end

  def isEven(value) do
    rem(value, 2) == 0
  end

  def calculate(numbers_list) do
    Enum.reduce(numbers_list, %{even: 0, odd: 0}, fn number, acc ->
      if isEven(number) do
        Map.put(acc, :even, sum(acc[:even], number))
      else
        Map.put(acc, :odd, sum(acc[:odd], number))
      end
    end)
  end

  def getInput(value) when length(value) == 10 do
    result = calculate(value)
    IO.puts("======================")
    IO.puts("Even: #{result[:even]}")
    IO.puts("Odd: #{result[:odd]}")
    IO.puts("======================")
  end
  def getInput(value) do
    number = input("Enter a number: ")
    numbers_list = value ++ [number]

    getInput(numbers_list)
  end

  def main() do
    getInput([])
  end
end

Main.main()
