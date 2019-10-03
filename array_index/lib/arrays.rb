class Arrays
  def self.multiplica_indices(array)
    array.size.times do |i|
      array[i] = array[i] * i
    end
    array
  end
end
