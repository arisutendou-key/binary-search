local module = function(t,s)
	s = s or 2
	t_ = t

	for i = 1,s in t_ do
		-- split table into s pieces
		min, max = math.floor((i-1)/s), math.floor(i/s)
		
	end
end

return module
