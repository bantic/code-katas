#!/usr/bin/env ruby

# http://codekata.pragprog.com/2007/01/kata_four_data_.html#more

team_data = []
File.open("football.dat").readlines.each do |line|
  line.strip!
  
  next unless line =~ /^\d+/
  
  # example line:
  # 6. Chelsea         38    17  13   8    66  -  38    64
  data = line.split(/\s+/)
  name = data[1]
  points_for = data[6]
  points_against = data[8]
  range = (points_for.to_i - points_against.to_i).abs

  team_data << [name,range]
end

min_range_team = team_data.sort{|a,b| a[1] <=> b[1] }.first
puts "Team: #{min_range_team[0]}. Range: #{min_range_team[1]}"
