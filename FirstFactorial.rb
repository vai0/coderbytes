def FirstFactorial(num)
	answer = 1
	for i in (2..num) do 
		answer = answer * i
	end
	answer
end

def FirstFactorialI(num)
	(1..num).inject(:*)
end

p FirstFactorialI(4)