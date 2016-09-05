



File.open(ARGV[0]).each do |line|
	line.strip!
	number = line.to_i
	count = 0 
	(1..number).each do  |index|
		count += 1 if number % index == 0
	end
	
	puts count % 2 != 0
end
