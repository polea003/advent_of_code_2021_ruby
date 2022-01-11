line_num=0
nums = []
text=File.open('data/puzzle_1_data').read
# text.gsub!(/\r\n?/, "")
text.each_line do |line|
  nums.push(line.to_i)
end
total_increases = 0

for counter in 1..(nums.length - 1)
    if nums[counter] > nums[counter - 1]
        total_increases += 1
    end
end
puts total_increases