module Sort
  def bubble_sort(array, index = 0)
    (0...array.size).each do
      (0...array.size - 1).each do |j|
        next unless array[j] > array[j + 1]

        temp = array[j]
        array[j] = array[j + 1]
        array[j + 1] = temp
      end
    end
    array
  end
end
