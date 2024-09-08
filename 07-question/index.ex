defmodule Main do
  def calculateDifferenceBetweenValues(value1, value2) do
    value1 - value2
  end

  def calculateDivisionBetweenValues(value1, value2) do
    value1 / value2
  end

  def calculateMultiplicationBetweenValues(value1, value2) do
    value1 * value2
  end

  def calculateAdicionalTicket(value, ticket_base_price, interval_variance, ticket_by_interval) do
    calculateDifferenceBetweenValues(ticket_base_price, value)
      |> calculateDivisionBetweenValues(interval_variance)
      |> calculateMultiplicationBetweenValues(ticket_by_interval)
  end

  def calculateTicketQuantity(
    value,
    ticket_base_price,
    _variance,
    _ticket_by_interval
  ) when value == ticket_base_price do 120 end
  def calculateTicketQuantity(value, ticket_base_price, variance, ticket_by_interval) when value < ticket_base_price do 120 + calculateAdicionalTicket(value, ticket_base_price, variance, ticket_by_interval) end

  def simulateTicketSale(_ticket_base_price, value) when value < 1 do 0 end
  def simulateTicketSale(ticket_base_price, value) do
    variance = 0.5
    ticket_by_interval = 26

    tickets = calculateTicketQuantity(value, ticket_base_price, variance, ticket_by_interval)

    IO.puts("VALOR: #{value} = Tickets: #{tickets}")

    simulateTicketSale(ticket_base_price, value - variance)
  end

  def main() do
    ticket_base_price = 5
    simulateTicketSale(ticket_base_price, ticket_base_price)
  end
end

Main.main()
