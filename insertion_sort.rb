class InsertionSort

  def sort(array)
    length = array.length

    1.upto(length-1) do |i|
      x = array[i]
      j = i - 1
      while j >= 0 && array[j] > x
        array[j+1] = array[j]
        j = j - 1

      end
      array[j+1] = x
    end
    array
  end
end

sorter = InsertionSort.new
sorter.sort([2, 1, 3])
