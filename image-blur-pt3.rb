class Image
  attr_accessor :picture

  def initialize(picture)
    @picture = picture
  end

  def output_image
    picture.each do |pixel|
      puts pixel.join(" ")
    end
  end

  def height 
    picture.length
  end

  def width
    picture[0].length
  end


  def blur_distance(distance)
    distance.times do
      blur!
    end
  end

  def blur! 
    ones = []
    picture.each_with_index do |row, row_index|
      row.each_with_index do |pixel, col_index|
        ones << [row_index, col_index] if pixel == 1
      end
    end

    ones.each do |location|
      row_number = location[0]
      col_number = location[1]

      picture[row_number][col_number-1] = 1 unless col_number ==  0 # Left
      picture[row_number][col_number+1] = 1 unless col_number >= width-1  # Right
      picture[row_number+1][col_number] = 1 unless row_number == height-1  # Bottom
      picture[row_number-1][col_number] = 1 unless row_number == 0 #Top
    end
  end
end



image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 1]   
])

image.blur_distance(3)
image.output_image

