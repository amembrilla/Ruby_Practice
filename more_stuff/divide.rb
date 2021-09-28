def divided(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divided(16,4)
puts divided(4, 0)
puts divided(14, 7)