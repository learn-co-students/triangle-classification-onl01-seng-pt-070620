require 'pry'

class Triangle
  
  attr_reader :sides
  
  def initialize(first_side,second_side,third_side)
    @sides = first_side , second_side , third_side
  end
  
  def kind
    raise TriangleError if zero_or_negative_side? || !triangle_inequality?
    case distinct_side_lengths
      when 3
        :scalene
      when 2
        :isosceles
      when 1
        :equilateral
      end
  end
  
  def distinct_side_lengths
    @sides.uniq.count
  end
  
  def zero_or_negative_side?
    @sides.any? {|side| side <= 0 }
  end
  
  def triangle_inequality?
    @sides[0] + @sides[1] > @sides[2] &&
    @sides[0] + @sides[2] > @sides[1] &&
    @sides[1] + @sides[2] > @sides[0]
  end
  
  class TriangleError < StandardError
  end
  
end


