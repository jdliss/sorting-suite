gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/selection_sort'

class SelectionSortTest < Minitest::Test

  def test_it_sorts_a_and_b
    sorter = SelectionSort.new
    result = sorter.sort(["b", "a"])
    assert_equal ["a", "b"], result
  end

  def test_it_sorts_1_and_2
    sorter = SelectionSort.new
    result = sorter.sort([2, 1])
    assert_equal [1, 2], result
  end

  def test_it_sorts_a_and_b_and_c
    sorter = SelectionSort.new
    result = sorter.sort(["b", "c", "a"])
    assert_equal ["a", "b", "c"], result
  end

  def test_it_sorts_a_and_b_and_c
    sorter = SelectionSort.new
    result =[0,1,2,3]
    scrambled = [3,2,1,0]
    assert_equal result, sorter.sort(scrambled)
  end

  def test_can_sort_from_requirements
    sorter = SelectionSort.new
    scrambled = ["d", "b", "a", "c"]
    sorted = ["a", "b", "c", "d"]
    assert_equal sorted, sorter.sort(scrambled)
  end

  def test_edge_case_empty_array
    sorter = SelectionSort.new
    assert_equal [], sorter.sort([])
  end

  def test_edge_case_reversed_array
    sorter = SelectionSort.new
    scrambled = [9,8,7,6,5,4,3,2,1,0]
    sorted = [0,1,2,3,4,5,6,7,8,9]
    assert_equal sorted, sorter.sort(scrambled)
  end

  def test_edge_case_reversed_array_of_chars
    sorted = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    reversed = %w(z y x w v u t s r q p o n m l k j i h g f e d c b a)
    sorter = SelectionSort.new
    assert_equal sorted, sorter.sort(reversed)
  end

  def test_edge_case_sorted_array_of_chars
    sorted = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    sorter = SelectionSort.new
    assert_equal sorted, sorter.sort(sorted)
  end

  def test_edge_case_1_num
    sorted = [1]
    sorter = SelectionSort.new
    assert_equal sorted, sorter.sort(sorted)
  end

  def test_edge_case_1_char
    sorted = ["y"]
    sorter = SelectionSort.new
    assert_equal sorted, sorter.sort(sorted)
  end

  def test_edge_case_dups
    sorter = SelectionSort.new
    sorted = [1,2,2,2,2,3,4,5]
    scrambled = [2,5,3,2,2,1,4,2]
    assert_equal sorted, sorter.sort(scrambled)
  end


end
