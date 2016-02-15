class InsertionSort

  def sort(array)
    length = array.length

    1.upto(length-1) do |current|
      current_value = array[current]
      prev = current - 1
      while prev >= 0 && array[prev] > current_value
        array[prev+1] = array[prev]
        prev = prev - 1

      end
      array[prev+1] = current_value
    end
    array
  end
end

sorter = InsertionSort.new
sorter.sort([2,1,3,9,4,5,0,2])
