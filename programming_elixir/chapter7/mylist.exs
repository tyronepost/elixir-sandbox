defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail) 

  def map([], _func), do: [] 
  def map([head | tail], func), do: [ func.(head) | map(tail, func) ]

  def sum(list), do: _sum(list, 0)

  # private methods
  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)
end