defmodule Main do
  def getInput(message) do
    IO.gets(message) |> String.trim() |> String.to_integer()
  end

  def main() do
    number_one = getInput("Digite o custo do carro: ")
    number_two = getInput("Digite o % do distribuidor: ")
    number_two = getInput("Digite os impostos: ")

    IO.puts("A média entre os números é: #{calculateAverage(number_one, number_two)}")
    IO.puts("A diferença entre os números é: #{calculateDifferenceBetweenNumbers(number_one, number_two)}")
    IO.puts("O produto entre os números é: #{multiplyNumbers(number_one, number_two)}")
    IO.puts("A divisão entre os números é: #{divideNumbers(number_one, number_two)}")
  end
end

Main.main()
