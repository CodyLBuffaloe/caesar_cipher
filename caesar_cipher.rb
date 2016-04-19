def caesar_cipher(string, shift)

    cipher = string.split("")

    cipher.each do |letter|

        letter.sum += shift

    end


end

caesar_cipher("abc", 3)