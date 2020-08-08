require 'pry'
class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    #binding.pry
    if (@side_1 <= 0 || @side_2 <= 0 || @side_3<= 0) ||
      (@side_1 + @side_2 <= @side_3) || (@side_2 + @side_3 <= @side_1) ||
      (@side_1 + @side_3 <= @side_2)
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    elsif @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_1 && @side_3
      :scalene
    end #if
  end #method



  class TriangleError < StandardError
    # def message
    #    "All sides must be greater than 0"
    # end
  end

end
