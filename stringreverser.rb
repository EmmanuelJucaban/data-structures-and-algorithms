def string_reverse (str)
  reversed = []
  string_array = str.split("")
  string_length = string_array.length

  while string_length > 0 do
    string_length = string_length - 1
    reversed << string_array[string_length]
  end

  return reversed.join("")
end


puts string_reverse("Oh hi there. I solved this without using the reverse method!")
