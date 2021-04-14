def each(arr)
  idx = 0

  while idx < arr.length 
    yield(arr[idx])
    idx += 1
  end

  arr 
end

arr = [1,2,3]

each(arr) {|num| puts num}