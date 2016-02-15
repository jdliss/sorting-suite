class MergeSort
  def sort(array)
    if array.length <= 1
      return array

    else
      middle = (array.length / 2).floor
      left = sort(array[0..middle-1])
      right = sort(array[middle..array.length])
      return merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      return right
    elsif right.empty?
      return left
    elsif left.first < right.first
      return [left.first] + merge(left[1..left.length], right)
    else
      return [right.first] + merge(left, right[1..right.length])
    end
  end
end
