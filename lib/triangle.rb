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
      
      
    elsif (l1 + l2) < l3 || (l2 + l3) < l1 || (l1 + l3) < length_2
      raise TriangleError
      # begin
      #   raise TriangleError
      # rescue TriangleError => error 
      #     puts error.message 
      # end
      
    else
      if length_1 == length_2 || length_2 == length_3 || length_1 == length_3
        :isosceles
        
      elsif length_1 == length_2 && length_1 == length_3 && length_2 == length_3
        :equilateral
        
      elsif length_1 != length_2 && length_2 != length_3 && length_1 != length_3
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
    
    



