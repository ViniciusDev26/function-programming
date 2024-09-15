defmodule Person do
  defstruct age: 0, height: 0.0, eye_color: "", hair_color: "", weight: 0.0
end

defmodule Main do
  def input(message) do
    IO.gets(message) |> String.trim()
  end

  def getInput(list, index) when index >= 6 do list end
  def getInput(list, index) do
    age = input("type age and press enter:") |> String.to_integer()
    height = input("type height and press enter:") |> String.to_float()
    eye = input("type eye color and press enter:")
    hair = input("type hair color and press enter:")
    weight = input("type weight and press enter:") |> String.to_float()

    person = %Person{age: age, height: height, eye_color: eye, hair_color: hair, weight: weight}
    new_list = list ++ [person]
    getInput(new_list, index + 1)
  end

  def count_older_than_50_and_under_60kg(people) do
    Enum.count(people, fn p -> p.age > 50 and p.weight < 60 end)
  end

  def average_age_shorter_than_150m(people) do
    ages = Enum.filter(people, fn p -> p.height < 1.50 end) |> Enum.map(& &1.age)
    if length(ages) > 0 do
      Enum.sum(ages) / length(ages)
    else
      0
    end
  end

  def percentage_with_blue_eyes(people) do
    total = length(people)
    blue_eyes_count = Enum.count(people, fn p -> p.eye_color == "A" end)
    if total > 0 do
      (blue_eyes_count / total) * 100
    else
      0
    end
  end

  def count_red_hair_without_blue_eyes(people) do
    Enum.count(people, fn p -> p.hair_color == "R" and p.eye_color != "A" end)
  end

  def main do
    people = Main.getInput([], 0)

    IO.puts("\n\n")
    IO.puts("Number of people older than 50 and weighing less than 60 kg: #{Main.count_older_than_50_and_under_60kg(people)}")
    IO.puts("Average age of people shorter than 1.50 meters: #{Main.average_age_shorter_than_150m(people)}")
    IO.puts("Percentage of people with blue eyes: #{Main.percentage_with_blue_eyes(people)}%")
    IO.puts("Number of people with red hair who do not have blue eyes: #{Main.count_red_hair_without_blue_eyes(people)}")
  end
end

Main.main()
