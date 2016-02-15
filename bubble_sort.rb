require 'pry'

class BubbleSort
  def sort(array)
    length = array.length
    loop do
      did_swap = false
      (length-1).times do |current|
        if array[current] > array[current+1]
          array[current], array[current+1] = array[current+1], array[current]
          did_swap = true
        end
      end
      break if did_swap == false
      length = length - 1
    end
    array
  end
end
