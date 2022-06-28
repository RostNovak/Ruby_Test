def encrypt(string,n)
  if string.length() <=0 or n <=0
    return string
    end
  for i in 1..n
    uneven = Array.new
    even = Array.new
    for el in 0..(string.length()-1)
      if el % 2 == 0
        uneven.push(string[el])
      else
        even.push(string[el])
      end
    end
    string = even.join('')+uneven.join('')
  end
  return string
end

print encrypt('abcdefghij',2)
