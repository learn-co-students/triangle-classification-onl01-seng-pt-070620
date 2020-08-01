class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    total = [(a + b > c), (a + c > b), (b + c > a)]
    raise TriangleError if total.include?(false)

    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    elsif a != b && b != c && a != c
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
