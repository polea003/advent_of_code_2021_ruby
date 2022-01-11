line_num=0
horizontal = 0
depth = 0
aim = 0
lines = []
text=File.open('data/day_2_data').read
# text.gsub!(/\r\n?/, "")
text.each_line do |line|
  lines.push(line.split())
end

lines.each do |element|
    case element[0]
    when 'forward'
        horizontal += element[1].to_i
        depth += aim*element[1].to_i
    when 'down'
        aim += element[1].to_i
    when 'up'
        aim -= element[1].to_i
    end
end
puts horizontal * depth