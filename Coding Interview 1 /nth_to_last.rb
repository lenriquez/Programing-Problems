


def nth_to_last list, n
 	nth = list
	while nth.next != nil && n > 0 do
		nth = nth.next
	end
	return nil if n > 0

	while nth.next != nil do
		nth = nth.next
	end

end