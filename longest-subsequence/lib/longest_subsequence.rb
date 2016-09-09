module LongestSubsequence

	def self.find(first, second)
		return nil if first.nil? && second.nil?
		return nil if [first,second].any? {|x| x.length == 1}

		permutation1 = []
		permutation2 = []

		2.upto([first, second].min_by {|x| x.length}.length) do |i|
			permutation1 << first.split("").permutation(i).to_a
			permutation2 << second.split("").permutation(i).to_a
		end

		common_subseq = permutation1.flatten(1).select {|x| permutation2.flatten(1).include? x }.max_by { |x| x.length }.join('')

		return !common_subseq.nil? ? common_subseq : nil

	end

end
