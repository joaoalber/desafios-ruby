class Arrays

  def self.multiplica_antecessor_predecessor(array)
    
    subarr = Array.new(array)
    (1..array.size-2).each do |i|
      array[i] = subarr[i-1] * subarr[i+1]
    end 
    array[0] = subarr[0] * subarr[1]
    array[-1] = subarr[-1] * subarr[subarr.size - 2]
    array
  end

end
