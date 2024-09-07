defmodule Main do
  def getInput() do
    IO.gets("Enter a number: ") |> String.trim() |> String.to_integer()
  end

  def multiply(a, b, c) do
    a * b * c
  end

  def main() do
    a = getInput()
    b = getInput()
    c = getInput()
    IO.puts("The result is: #{multiply(a, b, c)}")
  end
end

Main.main()
