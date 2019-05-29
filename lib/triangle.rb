class Triangle
  # write code here
  def initialize(eq, is , so)
    @e = eq
    @i = is
    @s = so
  end

  def eq
    @e
  end

  def is
    @i
  end

  def so
    @s
  end

  def kind
    check_tri
    if eq == is && is == so
      return :equilateral
    elsif eq == is || is == so && eq == so
      return :isosceles
    else
      return :scalene
    end
  end

  def check_tri

  end

  class TriangleError < StandardError

  end

end
