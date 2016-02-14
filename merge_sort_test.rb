gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'merge_sort'

class MergeSortTest < Minitest::Test

  def test_it_sorts_a_and_b
    sorter = MergeSort.new
    result = sorter.sort(["b", "a"])
    assert_equal ["a", "b"], result
  end

  def test_it_sorts_1_and_2
    sorter = MergeSort.new
    result = sorter.sort([2, 1])
    assert_equal [1, 2], result
  end

  def test_it_sorts_a_and_b_and_c
    sorter = MergeSort.new
    result = sorter.sort(["b", "c", "a"])
    assert_equal ["a", "b", "c"], result
  end

  def test_it_sorts_a_and_b_and_c
    sorter = MergeSort.new
    result = sorter.sort([3,2,1,0])
    assert_equal [0,1,2,3], result
  end

  def test_can_sort_from_requirements
    sorter = MergeSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_edge_case_empty_array
    sorter = MergeSort.new
    assert_equal [], sorter.sort([])
  end

  def test_edge_case_reversed_array
    sorter = MergeSort.new
    assert_equal [0,1,2,3,4,5,6,7,8,9], sorter.sort([9,8,7,6,5,4,3,2,1,0])
  end

  def test_edge_case_reversed_array_of_chars
    sorted = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    reversed = %w(z y x w v u t s r q p o n m l k j i h g f e d c b a)
    sorter = MergeSort.new
    assert_equal sorted, sorter.sort(reversed)
  end

  def test_edge_case_1_num_1_char
    sorted = [1]
    sorter = MergeSort.new
    assert_equal [1], sorter.sort(sorted)
  end


end
