def CountingMinutesI(str)
	first_time = str.split("-")[0]
	second_time = str.split("-")[1]

	minutes = ConvertTime(second_time) - ConvertTime(first_time)
	minutes += 1440 if minutes < 0 
end

def ConvertTime(str)
	minutes = 0
	if str.include?("pm")
		minutes = str.split(":")[0].to_i*60 + 12*60 + str.split(":")[1].to_i
	end

	if str.include?("am")
		minutes = str.split(":")[1].to_i if str[0..1] == "12"
		minutes = str.split(":")[0].to_i*60 + str.split(":")[1].to_i
	end

	minutes
end

p CountingMinutesI("1:23am-1:08am")