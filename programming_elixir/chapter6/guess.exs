defmodule Chop do
  def guess(num, range) do
    current_guess = div(range.last - range.first, 2) + range.first
    IO.puts "Is it #{current_guess}"
    is_it(num, current_guess, range)
  end
  
  def is_it(num, current_guess, _) when num === current_guess do
    current_guess
  end

  def is_it(num, current_guess, range) when num > current_guess do
    guess(num, current_guess..range.last)
  end

  def is_it(num, current_guess, range) when num < current_guess do
    guess(num, range.first..current_guess)
  end
end
