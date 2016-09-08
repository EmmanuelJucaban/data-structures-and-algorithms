class LargestPrimeFactor

  def largest_prime_of(number)
    prime = number

    (2..Math.sqrt(number.to_i)).each do |i|
      break if prime <= i
      prime /= i while (prime > i &&  prime % i == 0)
    end

    prime
  end

end
