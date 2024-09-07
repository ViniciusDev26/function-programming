defmodule Main do
  def getInput(message) do
    IO.gets(message) |> String.trim() |> String.to_integer()
  end

  def calculateAverage(number_one, number_two) do
    (number_one + number_two) / 2
  end

  def calculateDifferenceBetweenNumbers(number_one, number_two) do
    if number_one > number_two, do: number_one - number_two, else: number_two - number_one
  end

  def multiplyNumbers(number_one, number_two) do
    number_one * number_two
  end

  def divideNumbers(number_one, number_two) do
    if number_two == 0, do: "Não é possível dividir por 0", else: number_one / number_two
  end


  def main() do
    number_one = getInput("Digite o numero 1: ")
    number_two = getInput("Digite o numero 2: ")

    IO.puts("A média entre os números é: #{calculateAverage(number_one, number_two)}")
    IO.puts("A diferença entre os números é: #{calculateDifferenceBetweenNumbers(number_one, number_two)}")
    IO.puts("O produto entre os números é: #{multiplyNumbers(number_one, number_two)}")
    IO.puts("A divisão entre os números é: #{divideNumbers(number_one, number_two)}")
  end
end

Main.main()
