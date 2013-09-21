def PrimeChecker(num)
	prime = true
	num_array = num.to_s.split("")
	num_array.permutation.map(&:join).map(&:to_i).each do |n|
		return 1 if Prime?(n) == true
	end 
	return 0
end

def Prime?(num)
	return false if num == 1
	(2...num).each do |i|
		return false if num % i == 0
	end
	return true
end

p PrimeChecker(100)
p Prime?(1)