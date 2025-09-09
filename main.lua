local module = function(g,t,s,m_,x_)
	g = g or 0
	s = s or 2
	
	m_ = m_ or 1
	x_ = x_ or #t_
	space = x_-m_
	
	for i = 1,s do
		m,x = m_+(((i-1)/s)*space), m_+((i/s)*space
		if space > 2 then	
			if g >= t[m] and g <= t[x] then
				module(g,t,s,m,x)
			end
		elseif space == 2 then
			if g == t[m] then
				return m
			elseif g == t[x] then
				return g
			else 
				warn("Does not exist")
				return
			end
		elseif space == 1 then
			if g == t[x_] then
				return x_
			else
				warn("Does not exist")
				return
			end
		end		
	end
end

return module
