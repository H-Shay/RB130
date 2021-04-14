def times(num)
  counter = 0
  
  while counter < num 
    yield(counter)
    counter += 1
  end 

  num 
end 

times(5) {|num| puts num}