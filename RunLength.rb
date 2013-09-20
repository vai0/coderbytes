def RunLength(str)
	pocket = []
	result = []
	final = []
	index = 0
	str_copy = str.split("")

	while index < str.length
		pocket << str_copy.shift
		index += 1
		str_copy.each do |char|
			if char == pocket[-1]
				pocket << char
				index += 1
			end
		end
		str_copy.slice!(0...pocket.length-1)
		result << pocket.join
		pocket = []
	end

	result.each do |set|
		final << set.length << set.split("")[0]
	end
	return final.join
end

p LetterGroup("aabbcde")