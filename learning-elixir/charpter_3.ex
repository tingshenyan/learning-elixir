# Exercise 1

calculate_points = fn %{ strength: strength_value, dexterity: dexterity_value, intelligence: intelligence_value } -> strength_value * 2 + (dexterity_value + intelligence_value) * 3 end

#Exercise 2


defmodule TicTacToe do
  def winner({ a, b, c, _, _, _, _, _, _}) when (a == b and b == c) do { :winner, a } end
  def winner({ _, _, _, a, b, c, _, _, _}) when (a == b and b == c) do { :winner, a } end
  def winner({ _, _, _, _, _, _, a, b, c}) when (a == b and b == c) do { :winner, a } end
  def winner({ a, _, _, b, _, _, c, _, _}) when (a == b and b == c) do { :winner, a } end
  def winner({ _, a, _, _, b, _, _, c, _}) when (a == b and b == c) do { :winner, a } end
  def winner({ _, _, a, _, _, b, _, _, c}) when (a == b and b == c) do { :winner, a } end
  def winner({ a, _, _, _, b, _, _, _, c}) when (a == b and b == c) do { :winner, a } end
  def winner({ _, _, a, _, b, _, c, _, _}) when (a == b and b == c) do { :winner, a } end
  def winner({ _, _, _, _, _, _, _, _, _}) do { :no_winner } end
end

# TicTacToe.winner({:x, :o, :x, :o, :x, :o, :o, :o, :x})
# {:winner, :x}
# iex(3)> TicTacToe.winner({:x, :o, :x, :o, :x, :o, :o, :x, :o})
# {:no_winner}
# iex(4)>

# Exercise 3
calculate_income_tax = fn 
  salary when salary <= 2000 -> 0
  salary when salary <= 3000 -> salary * 0.05
  salary when salary <= 6000 -> salary * 0.10
  salary when salary > 6000 -> salary * 0.15
end 


# Exercise 4
 
