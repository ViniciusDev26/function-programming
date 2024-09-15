defmodule Main do
  def input(message) do
    IO.gets(message) |> String.trim() |> String.to_integer()
  end

  def getInput(list, last_input) when last_input == 0 do list end
  def getInput(list, _last_input) do
    age = input("type age and press enter:")
    if age != 0 do
      new_list = list ++ [age]
      getInput(new_list, age)
    else
      getInput(list, age)
    end
  end

  def calculateAgeAverage(numbers) do
    total = Enum.sum(numbers)
    total / length(numbers)
  end

  def main do
    ages = getInput([], -1)
    average = calculateAgeAverage(ages)

    IO.inspect(average)
  end
end
Main.main()
