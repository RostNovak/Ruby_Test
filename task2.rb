text = "text text repeat, repeat, repeat plain text apollo apollo"
def task2(text)
  text = text.downcase
  chars = text.split('')
  i = 0
  t = Array.new
  t[i] = Array.new
  chars.each{|c|
    if c == " " or c == ","
      i+=1
      t[i] = Array.new
    else
     t[i].push(c)
    end
  }
  for n in 0..t.length - 1
    t[n] = t[n].join
  end
  t.delete('')
  if t.length < 3
    return []
  else
    h = Hash.new(0)
    t.each{|t|
      h[t] += 1   
    }
    h = h.sort_by {|_key, value|  value}
    return h[-1][0] , h[-2][0] , h[-3][0]
  end
end

puts task2(text)