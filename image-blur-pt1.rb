class Image

  attr_accessor :pixels
  def initialize(pixels)
    @pixels = pixels
  end

  def output_image
    pixels.each do |row|
        row.each do |pixel|
        print pixel, " "
        end
        print "\n"
      end
  end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image


