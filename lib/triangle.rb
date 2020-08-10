require 'pry'
class Triangle 
  attr_accessor :side1, :side2, :side3
  
  def initialize (side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end
  
  def equilateral?
    @side1==@side2 && @side1==@side3 
  end
  
  def isosceles?
    @side2==@side3 || @side1==@side3 || @side1==@side2
  end
  
  def scalene?
    @side1 !=@side2 && @side1 !=@side3 && @side2 != @side3
  end
  
  def invalid?
    if @side1==0 || @side2 ==0 || @side3 ==0
     raise TriangleError
    end
    if @side1 < 0 || @side2 < 0 || @side3 < 0
      raise TriangleError
    end
    if (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
      raise TriangleError
    end
  end
  
  def kind
    if (invalid? == true)
      raise TriangleError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end
  
  class TriangleError < StandardError
  end
end