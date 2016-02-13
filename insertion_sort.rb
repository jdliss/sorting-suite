class InsertionSort

  def sort(array)
    length = array.length  # => 3


    1.upto(length-1) do |i|                          # => 1
      j = i                                          # => 1, 2
      while j > 0 && array[j-1] > array[j]           # => true, false, false
        array[j-1], array[j] = array[j], array[j-1]  # => [1, 2]
        j = j - 1                                    # => 0

      end  # => nil, nil
    end    # => 1
    array  # => [1, 2, 3]
  end      # => :sort
end        # => :sort

sorter = InsertionSort.new  # => #<InsertionSort:0x007f8131241d78>
sorter.sort([2, 1, 3])      # => [1, 2, 3]
