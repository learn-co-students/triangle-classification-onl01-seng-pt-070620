class Triangle
  # write code here
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  
  def initialize(equi, iso, scal)
    @equilateral = equi
    @isosceles = iso
    @scalene = scal 
    
    puts "equi is #{equi} iso is #{iso} scal is #{scal}"
  end
  
  def kind 
    
    if @equilateral <= 0 || @isosceles <= 0 || @scalene <= 0
      raise TriangleError

    elsif (@equilateral+@isosceles) <= @scalene || (@equilateral+@scalene) <= @isosceles || (@isosceles+@scalene) <= @equilateral
      raise TriangleError
      
    elsif @equilateral == @isosceles && @isosceles == @scalene
      :equilateral
    elsif @isosceles != @equilateral && @isosceles != @scalene && @equilateral != @scalene
      :scalene
    elsif @isosceles == @equilateral && @equilateral != @scalene
      :isosceles
    elsif @scalene == @equilateral && @equilateral != @isosceles
      :isosceles
    elsif @scalene == @isosceles && @equilateral != @isosceles
      :isosceles
    end   #end if
    
  end
  
  
  class TriangleError < StandardError
    # triangle error code
    def message
      "your triangle is invalid"
    end
    
  end
  
end
