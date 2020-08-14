class Triangle
  
  attr_accessor :left_side, :right_side, :bottom

def initialize(left_side,right_side,bottom)
  @left_side = left_side
  @right_side = right_side 
  @bottom = bottom
end

def kind 
  if @left_side <= 0 || @right_side <= 0 || @bottom <= 0 
    raise TriangleError 
  elsif @left_side + @right_side <= @bottom || @left_side + @bottom <= @right_side ||
    @right_side + @bottom <= @left_side 
    raise TriangleError 
  else 
    if @left_side == @right_side && @right_side == @bottom 
      :equilateral
      elsif @left_side == @right_side || @right_side == @bottom || @left_side == @bottom 
        :isosceles  
        elsif @left_side != @right_side && @right_side != @bottom && @left_side != @bottom
          :scalene
    end
  end
end




 class TriangleError < StandardError 
  end
end
