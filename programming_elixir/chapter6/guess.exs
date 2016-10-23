defmodule Chop do
  def guess(num, low..high) do
    current_guess = div(low + high, 2) 
    IO.puts "Is it #{current_guess}"
    is_it(num, current_guess, low..high)
  end
  
  def is_it(num, current_guess, _) when num === current_guess do
    current_guess
  end
  def is_it(num, current_guess, _..high) when num > current_guess do
    guess(num, current_guess+1..high)
  end
  def is_it(num, current_guess, low.._) when num < current_guess do
    guess(num, low..current_guess-1)
  end
end
