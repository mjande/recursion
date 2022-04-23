require 'pry-byebug'

def fibs(n)
  array = []
  n.times do |n|
    if n == 0
      array.push(n)
    elsif n == 1
      array.push(n)
    else
      sum = array[n - 1] + array[n - 2]
      array.push(sum)
    end
  end
  array
end

def fibs_rec(n, array=[])
  # binding.pry
  if n == 1
    array.push(0, 1)
  else
    fibs_rec(n - 1, array)
    array[n - 1] = (array[n - 3] + array[n - 2])
    array
  end
end