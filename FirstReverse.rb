def FirstReverse(str)
	str.reverse
end

def FirstReverseI(str)
	characters = str.split("")
	characters_reversed = []
	characters.each do |char|
		characters_reversed.unshift(char)
	end
	characters_reversed.join()
end

# p FirstReverseI("Hello World")

