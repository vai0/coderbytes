def TripleDouble(num1,num2)
	triple = Counter(num1).select { |num| num >= 3}
	double = Counter(num2).select { |num| num >= 2}
	return 1 unless triple.empty? || double.empty?
	return 0
end

def Counter(num)
	num_array = num.to_s.split("")
	count = 1
	lastNum = num_array.shift
	num_counts = []
	num_array.each do |n|
		if n != lastNum
			num_counts << count
			count = 1
			lastNum = n
		else
			count += 1
		end
	end
	num_counts << count
	return num_counts
end

p TripleDouble(1234,1234)
