def caesar_cipher(string, shift)

    cipher = string.split("")
    ciphered_text = []

    cipher.each do |letter|

		translate = letter.ord + shift

		if(translate > 122)
		    translate = (letter.ord - 25) + shift

		elsif(letter.ord.between?(65,90) && translate > 90)
		    translate = (letter.ord - 25) + shift

        elsif(letter.ord.between?(32,64) || letter.ord.between?(91,96))
		    translate = letter.ord
		end

        ciphered_text.push(translate.chr)


    end

    puts ciphered_text.join("")

end


caesar_cipher("Zbz",3)
