ALPHA = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z
		   A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}

def SimpleSymbols(str)
	index = 0
	characters = str.split("")

	characters.each do |char|
		left = index - 1
		right = index + 1

		left_char = nil if left < 0
		left_char = characters[left]
		right_char = characters[right]

		if ALPHA.include?(char)
			if left_char == "+" && right_char == "+"
			else
				return false
			end
		end 
		index += 1
	end
	return true
end

# p SimpleSymbols("+f++d+")