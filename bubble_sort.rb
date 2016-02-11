require 'pry'

class BubbleSort
  def sort(array)
    length = array.length
    loop do
      did_swap = false
      (length-1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          did_swap = true
        end
      end
      if did_swap == false
        break
      end
      length = length - 1
    end
    array
  end
end
