class Triangle
  attr_reader :sa, :sb, :sc
  def initialize(sa, sb, sc)
    @sa = sa
    @sb = sb
    @sc = sc
  end

  def kind
    validate_triangle
    if sa == sb && sb == sc
      :equilateral
    elsif sa == sb || sb == sc || sa == sc
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(sa + sb > sc), (sa + sc > sb), (sb + sc > sa)]
    [sa, sb, sc].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end

end