class Image 
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def output_image
    data.each do |pixel|
      puts pixel.join("")
    end
  end

  def blur
    ones = []
    data.each_with_index do |row, row_index|
      row.each_with_index do |pixel, col_index|
        ones << [row_index, col_index] if pixel == 1
      end
    end

    
    ones.each do |location|
      row_number = location[0]
      col_number = location[1]

      data[row_number][col_number-1] = 1 if col_number > 0 # Left
      data[row_number][col_number+1] = 1 if col_number < data[row_number].length-1 # Right
      data[row_number-1][col_number] = 1 if row_number > 0 # Top
      data[row_number+1][col_number] = 1 if row_number < data.length-1 # Bottom
    end

    output_image
  end

end


