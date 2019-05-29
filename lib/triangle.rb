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
    
  end

  class TriangleError < StandardError

  end

end
