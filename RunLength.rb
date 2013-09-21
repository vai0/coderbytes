#theres something wrong with it reading anything after "s"
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

# this one works fine though
def RunLengthII(str)
	str_copy = str.split("")
	lastChar = str_copy.shift
	result = ""
	count = 1
	str_copy.each do |char|
		if char != lastChar
			result << "#{count}#{lastChar}"
			lastChar = char
			count = 1
		else
			count += 1
		end
	end

	result += "#{count}#{str_copy[-1]}"
	return result
end

p RunLengthII("aabbcde")