class Array
  def flatten
    new_ary = Array(T).new
    each do |i|
      if i.is_a?(Array)
        i.flatten.each do |j|
          new_ary << j
        end
      else
        new_ary << i
      end
    end
    new_ary
  end
end

pp [[1, 2], 3, [4, [5]]].flatten
