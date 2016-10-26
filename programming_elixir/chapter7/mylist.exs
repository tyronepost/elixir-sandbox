defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail) 

   def map([], _func), do: [] 
   def map([head | tail], func), do: [ func.(head) | map(tail, func) ]
end
