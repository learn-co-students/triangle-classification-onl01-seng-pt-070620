require 'pry'
class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a + @b = @c
        raise TriangleError
    elsif @a <= 0 || @b <= 0 || @c <= 0
  #      raise TriangleError
    else

      if @a == @b && @b == @c
        return :equilateral
      elsif @a == @b
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
#    def message
#      "invalid triangle"
  end

end
