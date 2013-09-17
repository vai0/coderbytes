def ThirdGreatest(strArr)
	lengths = []
	strArr.each do |str|
		lengths << str.length
	end
	p values = lengths.sort
	answer_length = values[-3]

	answer = ""
	strArr.each do |str|
		answer = str if str.length == answer_length
	end
	answer
end

p ThirdGreatest(["coder","byte","code"])