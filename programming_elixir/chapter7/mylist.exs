defmodule MyList do
  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail) 

  def map([], _func), do: [] 
  def map([head | tail], func), do: [ func.(head) | map(tail, func) ]

  def sum(list), do: _sum(list, 0)

  # private methods
  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)

  def sum2([]), do: 0
  def sum2([head | tail]), do: head + sum2(tail)
end
