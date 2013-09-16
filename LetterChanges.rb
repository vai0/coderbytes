ALPHA = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}
VOWELS = %w{a e i o u}

def LetterChanges(str)
	result = []
	str.each_char do |char|
		if ALPHA.include?(char)
			if char == "z"
				new_char = "a"
			else
				new_char = ALPHA[ALPHA.index(char) + 1]
			end

			new_char.capitalize! if VOWELS.include?(new_char)
			result << new_char
		else
			result << char
		end
	end
	result.join
end
