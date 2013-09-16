def SimpleAdding(num)
	(1..num).to_a.inject(:+)
end

p SimpleAdding(12)