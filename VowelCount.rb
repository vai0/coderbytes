def VowelCount(str)
	vowels = %w{a e i o u A E I O U}
	vowel_count = 0
	str.split("").each do |char|
		vowel_count += 1 if vowels.include?(char)
	end
	return nil if vowel_count == 0
	return vowel_count
end

p VowelCount("hll")