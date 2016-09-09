class String
  def rot13
    return self if self.empty?

    data = ("a".."z").to_a

    encryptedstring = ""

    self.split('').each do |string|

      if(string.to_s) =~ /[a-zA-Z]/

        s = string.downcase

        # Finding the offset
        replace = data[data.index(s) + 13]

        # if 13 offset exceeds array length
        if replace.nil?
          replace = data[12 - (data.index("z") - data.index(s))]
        end

        # upcase
        s == string ? encryptedstring << replace : encryptedstring << replace.upcase
      else
        encryptedstring << string
      end
    end

    encryptedstring
  end
end
