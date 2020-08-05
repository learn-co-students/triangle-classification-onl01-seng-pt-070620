require 'pry'
class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a + @b == @c
      raise TriangleError
    elsif @a <= 0 || @b <= 0 || @c <= 0 || @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
#    def message
#      "invalid triangle"
  end

end




# And we might need <= to check not simply if they are equal but if the are less than the third sides length as well

# And to finish that off, we need to check all combinations, not just a + b
