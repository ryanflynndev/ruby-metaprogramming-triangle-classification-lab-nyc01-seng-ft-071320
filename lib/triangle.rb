class Triangle
  # write code here
  attr_accessor :first_side, :second_side, :third_side

  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side 
    @third_side = third_side 
    
  end
  
  def validate
    if @first_side <= 0 || @second_side <= 0 || @third_side <= 0
   
      raise TriangleError


    elsif (@first_side + @second_side <= @third_side) || (@first_side + @third_side <= @second_side) || (@second_side + @third_side <= @first_side)
      
      raise TriangleError

    end
  end

  def kind
    validate
    if @first_side == @second_side && @first_side == @third_side && @second_side == @third_side
      return :equilateral

    elsif @first_side == @second_side || @first_side == @third_side || @second_side == @third_side
      return :isosceles 

    elsif @first_side != @second_side && @third_side != @second_side && @third_side != @first_side
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message 
      "Invalid Triangle"
    end
  end
end
