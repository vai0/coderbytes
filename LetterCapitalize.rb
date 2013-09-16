def LetterCapitalize(str)
	str.split(" ").map do |word|
		word.capitalize
	end.join(" ")
end

p LetterCapitalize("hello world")