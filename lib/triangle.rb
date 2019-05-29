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
    elsif eq == is || is == so || eq == so
      return :isosceles
    else
      return :scalene
    end
  end

  def check_tri
    x = (eq + is > so)
    y = (eq + so > is)
    z = (is + so > eq)

    real_t = [x, y, z]
    [eq, is, so].each do |tr|
      real_t << false if tr <= 0
    end

    raise TriangleError if real_t.include?(false)
  end

  class TriangleError < StandardError

  end

end
