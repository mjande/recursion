=begin
On input of n elements
  if n < 2
    return
  else
    sort left half of elements 
    sort right half of elements
    merge sorted halves
=end

require 'pry-byebug'

def merge_sort(array)
  n = array.length
  if n < 2
    return array
  else
    array_b = merge_sort(array.slice(0..(n - 1) / 2))
    index_b = 0
    array_c = merge_sort(array.slice(((n - 1) / 2 + 1)..-1))
    index_c = 0
    sorted_array = []

    until array_b.empty? || array_c.empty?
      # binding.pry
      if array_b[index_b] < array_c[index_c]
        sorted_array.push(array_b.shift)
      else 
        sorted_array.push(array_c.shift) 
      end
    end

    if array_b.empty?
      array_c.each { |el| sorted_array.push(el) }
    elsif array_c.empty?
      array_b.each { |el| sorted_array.push(el) }
    end
    sorted_array
  end
end

a = [21, 12, 13, 2, 5, 9, 13, 22, 1, 0, 19]
p merge_sort(a)