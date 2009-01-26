#!/usr/bin/env ruby

# http://codekata.pragprog.com/2007/01/kata_four_data_.html#more

days_data = []
File.open("weather.dat").readlines.each do |line|
  line.strip!
  next unless line =~ /^\d+\s/

  day,max,min,other = line.split(/\s+/)
  range = max.to_i - min.to_i

  days_data << [day,range]
end

max_range_day =  days_data.sort{|a,b| b[1] <=> a[1] }.first
puts "Day: #{max_range_day[0]}. range: #{max_range_day[1]}"
