def CheckNums(num1, num2)
	value = -1
	return true if num2 > num1
	return false if num1 > num2
	return value if num1 == num2
end

# p CheckNums(3, 2)