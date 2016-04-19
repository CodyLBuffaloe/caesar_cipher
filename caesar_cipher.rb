def caesar_cipher(string, shift)

    cipher = string.split("")

    cipher.each do |letter|

		translate = letter.ord + shift

      if(letter == letter.upcase)

      	return translate.chr.upcase

      elsif(translate > 122)

      	cycled = letter.ord -25
      	cycled += shift
      	return cycled.chr
      end
          
    end



end
