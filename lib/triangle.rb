class Triangle
  # write code here

  def initialize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end

  def equilateral
    @equilateral
  end

  def kind
    self.equilateral = triangle
    if triangle.class != Triangle
      raise TriangleError
    else
      triangle.equilateral = self
    end
  end

  class TriangleError < StandardError

  end

end
