def LongestWord(str)
	unfiltered_words = str.split(" ")
	words = []

	unfiltered_words.each do |word|
		words << LongestWord_word(word)
	end
	result = words[0]
	words.each do |word|
		result = word if word.length > result.length
	end
	result == "" ? "no words found in string" : result 
end

def LongestWord_word(word)
	alphabet = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z
				  A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}

	result = []
	word.each_char do |char|
		result << char if alphabet.include?(char)
	end
	result.join()
end

p LongestWord("123456789 98765432")