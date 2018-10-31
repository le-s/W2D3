class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    
    result
  end
  
  def two_sum
    result = []
    
    i = 0
    while i < self.length - 1
      j = i + 1
      while j < self.length
        result << [i,j]  if self[i] + self[j] == 0
        j += 1
      end
      i += 1
    end

    result
  end
  
  def my_transpose
    result = [[],[],[]]
    self.each do |row|
      (0..2).each do |col_idx|
        result[col_idx] << row[col_idx]
      end
    end
    
    result
  end
end