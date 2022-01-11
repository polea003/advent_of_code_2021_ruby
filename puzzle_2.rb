line_num=0
nums = []
text=File.open('data/puzzle_1_data').read
# text.gsub!(/\r\n?/, "")
text.each_line do |line|
  nums.push(line.to_i)
end

sliding_windows = []

for counter in 0..(nums.length - 2)
    sliding_windows << nums[counter, 3].sum
end

# puts sliding_windows

total_increases = 0

for counter in 1..(sliding_windows.length - 1)
    if sliding_windows[counter] > sliding_windows[counter - 1]
        total_increases += 1
    end
end

puts total_increases