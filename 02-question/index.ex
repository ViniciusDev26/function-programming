defmodule Main do
  def getInput(message) do
    IO.gets(message) |> String.trim() |> String.to_integer()
  end

  def calculateBonus(sails) do
    sails * 0.04
  end

  def calculateSalary(bonus, salary) do
    salary - bonus
  end


  def main() do
    salary = getInput("Digite o salário: ")
    sails = getInput("Digite o valor das vendas: ")
    bonus = calculateBonus(sails)
    total = calculateSalary(bonus, salary)

    IO.puts("Salário Fixo: #{salary}")
    IO.puts("Vendas: #{sails}")
    IO.puts("Bonus: #{bonus}")
    IO.puts("Salário Total: #{total}")
  end
end

Main.main()
