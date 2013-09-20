def ABCheck(str)
	index = 0
	str.split("").each do |char|
		if char == "a"
			return true if str.split("")[index+4] == "b"
		end

		if char == "b"
			return true if str.split("")[index+4] == "a"
		end
		index += 1
	end
	return false
end

p ABCheck("bzzza")

