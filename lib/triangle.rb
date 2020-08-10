class Triangle
   attr_accessor :sone, :stwo, :sthree, :equilateral, :isosceles, :scalene

  def initialize(sone, stwo, sthree)
  @sone = sone
  @stwo = stwo
  @sthree = sthree
  end

  def kind()
    if @sone <= 0 || @stwo <= 0 || @sthree <= 0
        raise TriangleError
    end

    if @sone + @stwo <= @sthree || @sone + @sthree <= @stwo || @sthree + @stwo <= @sone
        raise TriangleError
    end

    if @sone == @stwo && @sone == @sthree && @stwo == @sthree
      :equilateral
    elsif @sone == @stwo || @sone == @sthree || @stwo == @sthree
      :isosceles
    elsif @sone != @stwo && @sone != @sthree && @stwo != @sthree
      :scalene
  end
  end



  class TriangleError < StandardError
  end
end



 #if @sone <= 0 || @stwo <= 0 || @sthree <= 0
#  begin
#    raise TriangleError
#  rescue TriangleError => error
#      puts error.message
#  end
