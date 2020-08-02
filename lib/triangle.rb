class Triangle
  attr_accessor :length_one, :lenght_two, :lenght_three

  def initialize(length_one, lenght_two, lenght_three)
    @length_one = length_one
    @lenght_two = lenght_two
    @lenght_three = lenght_three
    @lenghts = [@length_one, @lenght_two, @lenght_three]

  end

  def kind
    if @lenghts.any?{|side| side <= 0 } || ((@lenghts[0] + @lenghts[1]) <= @lenghts[2] || (@lenghts[0] + @lenghts[2]) <= @lenghts[1] || (@lenghts[2] + @lenghts[1]) <= @lenghts[0])
      raise TriangleError
    elsif length_one == lenght_two && lenght_two == lenght_three
      :equilateral
    elsif length_one == lenght_two || lenght_two == lenght_three || length_one == lenght_three
      :isosceles
    else
      :scalene

    end

  end
  class TriangleError < StandardError

  end
end
