def PrimeTime(num)
	(2...num).each do |i|
		return false if num % i == 0
	end
	return true
end

p PrimeTime(7)