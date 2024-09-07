defmodule Main do
  def calculateNewTicketQuantity(value) do
    (value / 0.50) * 26
  end

  def main() do
    IO.puts("O valor do ingresso é: #{calculateTicketValue(5)}")
  end
end

Main.main()
