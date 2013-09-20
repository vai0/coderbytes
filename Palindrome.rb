def Palindrome(str)
	no_space = str.split(" ").join
	return true if no_space == no_space.reverse
	return false
end

p Palindrome("never odd or even")