most_common_bits = []
num_0_1 = [0 , 0]
byte_strings = []
text=File.open('data/day_3_data').read
# text.gsub!(/\r\n?/, "")
text.each_line do |line|
    byte_strings.push(line.chomp.split(''))
end
(0..byte_strings[0].length-1).each do |index|
    byte_strings.each do |byte|
        case byte[index].to_i
        when 0
            num_0_1[0] += 1
        when 1
            num_0_1[1] += 1
        end
    end
    if num_0_1[0] > num_0_1[1]
        most_common_bits << 0
    else
        most_common_bits << 1
    end
    num_0_1 = [0,0]
end

least_common_bits = []
most_common_bits.each do |element|
    case element
    when 0
        least_common_bits << 1
    when 1
        least_common_bits << 0
    end
end
index = 0
while byte_strings.length > 1
    found_byte = byte_strings.select do |byte|
        byte[index] == most_common_bits
    end
    index += 1
    if found_byte.length > 0
        byte_strings = found_byte
    end
end
print byte_strings
puts most_common_bits.join('').to_i(2) * least_common_bits.join('').to_i(2)






