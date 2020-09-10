class Triangle
  attr_accessor :s1, :s2, :s3
  @sides = []

  def initialize(s1, s2, s3)
    @s1, @s2, @s3 = s1, s2, s3
    @sides = [s1, s2, s3]
  end

  def kind()
    if(negative? == true || valid? == false)
      raise TriangleError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end

  def negative?
    @sides.each do |length|
      if(length <= 0)
        return true
      end
    end
  end

  def equilateral?
    (@s1 == @s2) && (@s1 == @s3)
  end

  def scalene?
    (@s1 != @s2) && (@s1!= @s3) && (@s2 != @s3)
  end

  def isosceles?
    (@s2 == @s3) || (@s1 == @s2) || (@s1 = @s3)
  end

  def valid?
    (@s1 + @s2 > @s3) && (@s2 + @s3 > @s1) && (@s1 + @s3 > @s2)
  end


class TriangleError < StandardError

end

end