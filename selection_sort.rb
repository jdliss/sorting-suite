require 'pry'
class SelectionSort

  def sort(array)
    length = array.length

    (length-1).times do |sorted_index|
      index_of_min = sorted_index
      (sorted_index+1).upto(length-1) do |unsorted_index|
        index_of_min = unsorted_index if array[index_of_min] > array[unsorted_index]
      end
      array[sorted_index], array[index_of_min] = array[index_of_min], array[sorted_index] if index_of_min != sorted_index
    end
    array
  end
end
