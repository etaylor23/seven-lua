function for_loop(startVal, endVal, cb)
  local counter = startVal
  while counter <= endVal do
    cb(counter)
    counter = counter + 1
  end
end

function print_something(counter)
  print(counter)
end

for_loop(1, 20, print_something)