String arr = ["ADAM", "EVE", "FRANKLIN", "JOHN", "MARK"]
copy = arr.sort

copy.each do|key, value|
puts "#{key}, ch_count: #{key.size}"
end