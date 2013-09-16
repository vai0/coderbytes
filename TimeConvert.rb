def TimeConvert(num)
	hours = num / 60
	minutes = num % 60

	return "#{hours}:#{minutes}"
end

p TimeConvert(0)