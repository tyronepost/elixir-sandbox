prefix = fn prefix -> 
  (fn postfix -> "#{prefix} #{postfix}" end) 
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")
