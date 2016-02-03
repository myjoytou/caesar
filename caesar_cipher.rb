def rotate_alphabates(ch, shift)
    as_num = ch.ord
    temp_val = as_num + (shift % 26)
    if (temp_val > 90 && temp_val < 97) || (temp_val > 122)
        temp_val = temp_val - 26
    end
    return temp_val.chr
end

def caeser_cipher(word, shift)
    aux_array = []
    word.each_char do |ch|
        aux_array.push(rotate_alphabates(ch, shift))
    end
    return aux_array.join()
end

puts 'enter the string'
word = gets.chomp
puts 'enter the shift value'
shift = gets.chomp.to_i
result = caeser_cipher(word, shift)
puts 'the result is: ' + result
