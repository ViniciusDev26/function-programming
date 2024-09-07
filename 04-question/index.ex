defmodule Main do
  def getInput(message) do
    IO.gets(message) |> String.trim() |> String.to_integer()
  end

  def returnMinorNumber(a, b) when a == b do {:numbers_equals, "São iguais"} end
  def returnMinorNumber(a, b) when a > b do {:ok, b} end
  def returnMinorNumber(a, b) when a < b do {:ok, a} end

  def main() do
    number_one = getInput("Digite o numero 1: ")
    number_two = getInput("Digite o numero 2: ")

    with {:ok, minor_number} <- returnMinorNumber(number_one, number_two) do
      IO.puts("O menor numero é: #{minor_number}")
    else
      {:numbers_equals, message} -> IO.puts(message)
    end
  end
end

Main.main()
