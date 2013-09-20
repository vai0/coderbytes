def ExOh(str)
	x = 0
	o = 0
	str.each_char do |char|
		x += 1 if char == "x"
		o += 1 if char == "o"
	end

	return true if x == o
	return false
end

p ExOh("xooxxo")