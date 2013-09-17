def ThirdGreatest(strArr)
	lengths = []
	strArr.each do |str|
		lengths << str.length
	end
	values = lengths.sort
	answer_length = values[-3]

	answer = ""
	strArr.each do |str|
		answer = str if str.length == answer_length
	end
	answer
end

def ThirdGreatestII(strArr)
	third_largest_length = strArr.sort_by(&:length)[-3].length
	strArr.select { |str| str.length == third_largest_length}[-1]
end

p ThirdGreatestII(["coder","byte","code"])