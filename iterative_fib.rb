def iterative_fib(fib)
  # we return 0 right away if the passed in number is less than 0
  return 0 if fib <= 0
  # since the count starts at 2, we're going to push the 1st to fibs in the array
  fibs = [0,1]
  # Start of the counter variable
  count = 2
  # The current number that we're on
  current_num = 1
  # The previous number we're on
  previous_num = 0
  # a temp variable to store the current number in
  temp = nil

  while count <= fib do
    # save the current number to a temp variable
    temp = current_num
    # definition of fibonacci
    current_num = current_num + previous_num
    # take the temp variable and save it as the previous number
    previous_num = temp
    # increase count
    count+= 1
    fibs << current_num
  end
  # return the very last item in the array
  fibs.last
end











puts iterative_fib(6)


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


require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
