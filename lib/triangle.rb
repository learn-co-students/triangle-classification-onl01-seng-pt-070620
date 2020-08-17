class Triangle
  # write code here
    attr_accessor

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0
      begin
        raise TriangleError
      end
    elsif @length1 + @length2 <= @length3 || @length1 + @length3 <= @length2 || @length2 + @length3 <= @length1
      begin
        raise TriangleError
      end
    elsif @length1 == @length2 && @length2 == @length3
        :equilateral
    elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
        :isosceles
    else @length1 != @length2 || @length2 != @length3 || @length1 != @length3
        :scalene
    end
  end

  class TriangleError < StandardError
  end
end
