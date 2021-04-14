def select(arr)
  idx = 0
  return_arr = []

  while idx < arr.length
    return_arr << arr[idx] if yield(arr[idx])
    idx += 1
  end

  return_arr
end 

array = [1, 2, 3, 4, 5]

# p select(array) { |num| num.odd? }      # => [1, 3, 5]
# p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true
