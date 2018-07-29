# exercise 1

defmodule MyList do
  def max([]), do: []
  def max([n]), do: n
  def max([a,b]), do: if a > b, do: a, else: b
  def max(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    if max(list_a) > max(list_b), do: max(list_a), else: max(list_b)
  end

  def min([]), do:[]
  def min([n]), do: n
  def min([a,b]), do: if a > b, do: b, else: a
  def min(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    if min(list_a) < min(list_b), do: min(list_a), else: min(list_b)
  end
end

# exercise 2
defmodule EnchanterShop do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
    ]
  end

  def filter_items([], _), do: []
  def filter_items([head|tail], filter) do
    [magic: is_magic] = filter
    if head[:magic] === is_magic, do: [head| filter_items(tail, filter)], else: filter_items(tail, filter)
  end
end

#exercies 3
defmodule Sort do
  def ascendent([]), do: []
  def ascendent([a]), do: [a]
  def ascendent(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b}= Enum.split(list, half_size)
    merge(ascendent(list_a), ascendent(list_b), :asc)
  end

  def descendent([]), do: []
  def descendent([a]), do: [a]
  def descendent(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b}= Enum.split(list, half_size)
    merge(descendent(list_a), descendent(list_b), :desc)
  end

  defp merge([], list_a, _), do: list_a
  defp merge(list_b, [], _), do: list_b
  defp merge([head_a|tail_a], list_b = [head_b|_], order) when order === :asc and head_a <= head_b, do: [head_a| merge(tail_a, list_b, :asc)]
  defp merge([head_a|tail_a], list_b = [head_b|_], :desc ) when head_a >= head_b, do: [head_a| merge(tail_a, list_b, :desc)]
  defp merge(list_a = [head_a|_], [head_b|tail_b], order) when order === :asc and head_a > head_b, do: [head_b| merge(list_a, tail_b, :asc)]
  defp merge(list_a = [head_a|_], [head_b|tail_b], :desc ) when head_a < head_b, do: [head_b| merge(list_a, tail_b, :desc)]
end

# Exercise 4
defmodule Sum do
  def up_to(n), do: up_to(n, 0)
  def up_to(0, acc), do: acc
  def up_to(n, acc) when n > 0, do: up_to(n-1, acc + n)
end
   
defmodule Math do
  def sum(n), do: sum(n, 0)
  def sum([], value), do: value
  def sum([head| tail], value), do: sum(tail, head + value)
end


# TODO: I think there is something wrong here!
defmodule Sort do
  def asc([]), do: []
  def asc([a]), do: [a]
  def asc(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    merge(list_a, list_b, [])
  end
  
  defp merge([], list_a, concat), do: concat ++ list_a
  defp merge(list_b, [], concat), do: concat ++ list_b
  defp merge([head_a|tail_a], list_b = [head_b|_], concat) when head_a <= head_b, do: merge(tail_a, list_b, concat ++ [head_a])
  defp merge(list_a = [head_a|_], [head_b|tail_b], concat) when head_a > head_b, do: merge(list_a, tail_b, concat ++ [head_b])
end



