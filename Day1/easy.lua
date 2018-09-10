function ends_in_3(num)
  local stringNumber = tostring(num)
  local lastCharacterString = string.sub(stringNumber, -1)
  return tonumber(lastCharacterString) == 3
end

function is_prime(x)
  -- Negatives, 0 and 1 are not prime.
  if x < 2 then 
     return false
  end

  -- Prime check for even numbers.
  if x == 2 then
     return false
  end
  if x % 2 == 0 then
     return false
  end

  -- Now check the odd numbers --
  for i = 3, math.sqrt(x, 2) do 
      if x % i == 0 then 
         return false
      end 
  end 
  return true
end

function n_prime_numbers(amountToPrint)
  local counter = 0;
  local flag = 0;

  while flag < amountToPrint do
    counter = counter + 1
    if is_prime(counter) and ends_in_3(counter) then
      print(counter)
      flag = flag + 1
    end

  end
end

-- print(ends_in_3(24))
-- print(is_prime(5))
print(n_prime_numbers(5))