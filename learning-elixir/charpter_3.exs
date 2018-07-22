require Integer
calculate_income_tax = fn 
  salary when salary <= 2000 -> 0
  salary when salary <= 3000 -> salary * 0.05
  salary when salary <= 6000 -> salary * 0.10
  salary when salary > 6000 -> salary * 0.15
end 

result = Integer.parse IO.gets("Please input salary:\n")
# https://hexdocs.pm/elixir/Integer.html#parse/2

if result == :error do
  IO.puts "Invalid input value"
else
  {salary, _} = result
  tax = calculate_income_tax.(salary)
  net_wage = salary - tax
  IO.puts "Salary: #{salary}, Tax: #{tax}, net_wage: #{net_wage}"
end


