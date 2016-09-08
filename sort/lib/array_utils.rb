module ArrayUtils
	def self.sort(list)
		# Loop until we get to the last item
		for i in 1..(list.length-1)
			# store a variable for the current number
			current = list[i]
			# a variable for keeping track of the previous item
			j = i - 1
			# while J is greater than 0 and the current number is less than th
			while j >= 0 && current < list[j]
				# The number to the right becomes the number to the left
				list[j+1] = list[j]
				# the number to the right becomes the current number
				list[j] = current
				# To break oput of the 1st iteration
				j -= 1
			end
		end
		return list
	end
end



print ArrayUtils.sort([7,1,3,4,5,6,2])






# [1,2,3,4,5,6,7]
