defmodule Main do
  def getInput(message) do
    IO.gets(message) |> String.trim() |> String.to_integer()
  end

  def convertPercent(percent) do
    percent / 100
  end

  def calculatePercentValue(percent, value) do
    value * percent
  end

  def calculatePrice(factory_cost, distributor_cost, fees_cost) do
    factory_cost + distributor_cost + fees_cost
  end

  def getEntityPercents(value)
    when value <= 12000
    do %{distributor: 5, fees: 0} end
  def getEntityPercents(value)
    when 12001 <= value and value <= 25000
    do %{distributor: 10, fees: 15} end
  def getEntityPercents(value)
    when 25001 <= value
    do %{distributor: 15, fees: 20} end

  def main() do
    car_cost = getInput("Digite o custo do carro: ")
    %{distributor: distributor_percent, fees: fees_percent} = getEntityPercents(car_cost)

    distributor_cost = convertPercent(distributor_percent) |> calculatePercentValue(car_cost)
    fees_cost = convertPercent(fees_percent) |> calculatePercentValue(car_cost)
    total = calculatePrice(car_cost, distributor_cost, fees_cost) |> :erlang.float_to_binary(decimals: 2)

    IO.puts("O valor total do carro é: R$ #{total}")
  end
end

Main.main()
