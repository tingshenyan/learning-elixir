#1
bread_total = fn count -> count * 0.10 end
milk_total = fn count -> count * 2.00 end
cake_total = fn count -> count * 15.00 end

total = bread_total.(10) + milk_total.(3) + cake_total.(1)

IO.puts "Total: " <> total
# 2

travel_record = fn distances, hours -> IO.puts "Bob traveled #{distances} km in #{hours} hours and average speed is #{distance/hours} km/h." end

#3
apply_tax = fn price -> IO.puts "# Price: #{price * 1.12} - Tax: #{price * 0.12}" end 

#4
defmodule MatchstickFactory do
  
  def boxes(number) do
    %{ :big => bigs(number), :medium => mediums(number), :remaining_matchsticks => remains(number), :small => smalls(number) }  
  end

  defp bigs(number) do
    div(number, 50)
  end

  defp mediums(number) do
    rem(number, 50) |> div(20)
  end

  
  defp smalls(number) do
    rem(number, 50) |> rem(20) |> div(5)
  end

  defp remains(number) do
    rem(number, 50) |> rem(20) |> rem(5)
  end
end