class String
	def palindrome?
		return true if self.length == 0

		reversed = ""

		main_s = self.scan(/[a-zA-Z]/).join("")

		main_s.split("").each do |x|
			reversed = x + reversed
		end

		 main_s == reversed
	end

end
