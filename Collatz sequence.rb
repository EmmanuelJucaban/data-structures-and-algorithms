# Brute force solution

def collatz_sequence(number)
  # store the sequence of each number passed thru in an array
  sequence = [];

  # push the current number into the sequence array
  sequence << number
  # while the number is not equal to 1 we are going to do the collatz sequence
  while number != 1 do

    # if the number is even
    if number.even?
      # number is equal to the number divided by 2
      number = number / 2
      # push the number into the sequence
      sequence << number
      # if number is odd
    else
      # number is then equal to (number * 3) + 1
      number = (3 * number) + 1
      # push the number into the sequence
      sequence << number
    end
  end
  # return the current sequence
 sequence
end


# This method is to find which number has the longest collatz betweeen 1 and 1 million using the brutce force way
def longest_collatz
  # starting from 1 to 1 million we're going to call reduce on each number to see which has the longest sequence
  (1..1000000).reduce do |longest, number|
    # if the current numbers collatz sequence length is longer than the next number pased in
    #  then longest becomes the current item, if not then number becomes the current item
    collatz_sequence(longest).length > collatz_sequence(number).length ? longest : number
  end
end

puts longest_collatz



def collatz_seq(n,length=1)
  #recursive solution.
  #Takes individual number(not range)
  #and outputs length of terms took to reach 1

  # we're going to return the length if the number ever reaches one
	return length if n == 1
  # if n is even
	if n % 2 == 0
    # we call the function again dividing it by 2 and adding 1 to the length
		return collatz_seq(n / 2,length + 1)

    # if its odd we call the functiuon again multiplying it by 3 and then adding 1.
    # Also add 1 to the length to the length
	else
		return collatz_seq(3 * n + 1,length + 1)
	end
end

collatz_sequence("1,000,000") #837799 with 525 length
collatz_sequence("50") #27


n_and_l = (1..1000000).map {|n| [n,collatz_seq(n)] }.max_by {|combo| combo[1]}
puts "#{n_and_l.shift} produced the longest chain of collatz values with #{n_and_l.shift} length"
#took range, passed individual n to recursive method to get total length of that n,
#then find max length with mapped values.
