class Triangle
  
  attr_accessor :l1, :l2, :l3
  
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
  
  def kind
    raise TriangleError if invalid?
   
    if l1 == l2 && l2 == l3
      return :equilateral
    elsif l1 == l2 || l2 == l3 || l1 == l3
      return :isosceles
    else
      return :scalene
    end
  end
  
  def invalid?
    !((l1 > 0 && l2 > 0 && l3 > 0) &&
    (l1 + l2 > l3 && l1 + l3 > l2 && l2 + l3 > l1))
  end
  
  class TriangleError < StandardError
  end
  
  
end
