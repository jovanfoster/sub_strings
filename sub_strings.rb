def sub_strings(str, dict)
    matches = Hash.new(0)
    str.split.each do |string|
        dict.each do |substr|
            if string.match?(substr)
                matches[substr] += 1
            end
        end
    end
    
    return matches
end

puts "Please type a message: "
str = gets.chomp

puts "Please enter a dictionary of substrings: "
dict = gets.chomp.split 

puts sub_strings(str, dict)