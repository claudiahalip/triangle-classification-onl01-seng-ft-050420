class Triangle
  
  attr_accessor :l1, :l2, :l3
  
  def initialize (l1, l2, l3)
    @length_1 = l1
    @length_2 = l2
    @length_3 = l3
  end 
  
  
  def kind
    if l1 <= 0 || l2 <= 0 || l3 <= 0
      raise TriangleError
      
      
    elsif (l1 + l2) < l3 || (l2 + l3) < l1 || (l1 + l3) < l2
      raise TriangleError
      
      
    else
      if l1 == l2 || l2 == l3 || l1 == l3
        :isosceles
        
      elsif l1 == l2 && l1 == l3 && l2 == l3
        :equilateral
        
      else
        :scalene
        
      end
    end
    
  end
        
      
    
      
  class TriangleError < StandardError
    # triangle error code
    
    def massege
      puts " TriangleError"
    end
  end
    
end
    
    



