def recursive_fib(fib)
  if fib == 0
    return 0
  elsif fib == 1
    return 1
  else
    return recursive_fib(fib-2) + recursive_fib(fib-1)
  end
end

puts recursive_fib(7)
