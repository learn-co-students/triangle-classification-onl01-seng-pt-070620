class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]

=begin    [a, b, c].each do |side|
=end      real_triangle << false if side <= 0 
    if a==0 || b==0 || c==0 then real_triangle << false 
    end
    raise TriangleError if real_triangle.include?(false)
    
  end

  class TriangleError < StandardError
  end

end