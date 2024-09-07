defmodule Main do
  def getInput(message) do
    IO.gets(message) |> String.trim() |> String.to_integer()
  end

  def calculateFees(invoice, tax) do
    invoice + (invoice * tax / 100)
  end

  def calculateRemainingSalary(salary, invoice_one, invoice_two) do
    salary - (invoice_one + invoice_two)
  end

  def main() do
    salary = getInput("Digite o salário: ")
    invoice_one = getInput("Digite o valor da conta 1: ")
    invoice_two = getInput("Digite o valor da conta 2: ")

    tax = 2

    invoice_one_with_tax = calculateFees(invoice_one, tax)
    invoice_two_with_tax = calculateFees(invoice_two, tax)
    remaining_salary = calculateRemainingSalary(salary, invoice_one_with_tax, invoice_two_with_tax)

    IO.puts("O salário restante é: #{remaining_salary}")
  end
end

Main.main()
