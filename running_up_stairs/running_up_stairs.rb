def running_up_stairs string, count, stairs
	if stairs == 0
		puts string
		return
	end
	return if stairs < 0

	running_up_stairs "#{string}+1", count, stairs-1 if count < 1 
	count = 1
	running_up_stairs "#{string}+2", count, stairs-2 if count < 2
	count = 2
	running_up_stairs "#{string}+3", count, stairs-3 if count < 3

end