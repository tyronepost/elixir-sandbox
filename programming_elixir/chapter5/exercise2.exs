fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

fizz_buzz_rem = fn
  n -> fizzbuzz.(rem(n,3), rem(n,5), n)
end

IO.puts fizzbuzz.(0, 0, 1)
IO.puts fizzbuzz.(0, 1, 1)
IO.puts fizzbuzz.(1, 0, 1)
IO.puts fizzbuzz.(1, 1, 1)

IO.puts fizz_buzz_rem.(10)
IO.puts fizz_buzz_rem.(11)
IO.puts fizz_buzz_rem.(12)
IO.puts fizz_buzz_rem.(13)
IO.puts fizz_buzz_rem.(14)
IO.puts fizz_buzz_rem.(15)
IO.puts fizz_buzz_rem.(16)


