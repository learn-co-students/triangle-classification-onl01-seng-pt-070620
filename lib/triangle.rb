class Triangle
  attr_accessor :side1, :side2, :side3
  @all_sides = []
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @all_sides = [side1, side2, side3]
  end
  
  def valid?
    @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2
  end
  
  def non_triangle?
    @all_sides.each do |length|
      if length <= 0
        return true
      end
    end
  end

  def kind
    if non_triangle? == true || valid? == false
      raise TriangleError
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
      :isosceles
    end
  end
  class TriangleError < StandardError
  end
end
