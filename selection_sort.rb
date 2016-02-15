class SelectionSort

  def sort(array)
    length = array.length

    (length-1).times do |i|
      current = array[i]

      if array[i] < array[i+1]
  end
end


sorter = SelectionSort.new
sorter.sort([2,1,3,9,4,5,0,2])
