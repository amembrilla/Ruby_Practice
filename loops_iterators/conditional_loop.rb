i = 0
loop do
  i = i + 2
  if i == 4
    next
  end
  puts i

  if i == 10
    break
  end
end

x = 42
loop do
  puts x
  x = 2
  break
end
puts x 