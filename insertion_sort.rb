class InsertionSort

  def sort(array)
    length = array.length  # => 3

    1.upto(length-1) do |i|         # => 1
      x = array[i]                  # => 1, 3
      j = i - 1                      # => 0, 1
      while j >= 0 && array[j] > x  # => true, false, false
        array[j+1] = array [j]      # => 2
        j = j - 1                   # => -1

      end             # => nil, nil
      array[j+1] = x  # => 1, 3
    end               # => 1
    array             # => [1, 2, 3]
  end                 # => :sort
end                   # => :sort

sorter = InsertionSort.new  # => #<InsertionSort:0x007fb9391c96f8>
sorter.sort([2, 1, 3])      # => [1, 2, 3]
