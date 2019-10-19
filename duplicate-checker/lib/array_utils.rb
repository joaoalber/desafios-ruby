class ArrayUtils
  def checar_duplicatas(array)
    array.select{ |i| array.count(i) > 1}.uniq
  end
end
