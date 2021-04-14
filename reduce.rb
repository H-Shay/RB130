def reduce(arr, num=0)
  acc = num
  idx = 0

  while idx < arr.length
    acc = yield(acc, arr[idx])
    idx += 1
  end

  acc
end 

array = [1, 2, 3, 4, 5]

# reduce(array) { |acc, num| acc + num }                    # => 15
#p reduce(array, 10) { |acc, num| acc + num }                # => 25
 p reduce(array) { |acc, num| acc + num if num.odd? }  
