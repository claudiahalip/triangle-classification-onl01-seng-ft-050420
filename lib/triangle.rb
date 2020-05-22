class Triangle
  
  attr_accessor :length_1, :length_2, :length_3
  
  def initialize (length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end 
  
  
  def kind
    if length_1 <= 0 || length_2 <= 0 || length_3 <= 0
      raise TriangleError
      # begin
      #   raise TriangleError
      # rescue TriangleError => error 
      #     puts error.message 
      # end
      
    elsif (length_1 + length_2) < length_3 || (length_2 + length_3) < length_1 || (length_1 + length_3) < length_2
      raise TriangleError
      # begin
      #   raise TriangleError
      # rescue TriangleError => error 
      #     puts error.message 
      # end
      
    else
      if length_1 == length_2 && length_1 == length_3 
        :equilateral
        
      elsif  length_1 == length_2 || length_2 == length_3 || length_1 == length_3
        :isosceles
        
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
    
    



