class Gna < ActiveRecord::Base

	def random_numbers
		first_num = seed_xo
		r = -1
		randoms = Array.new
		xo=seed_xo
		while r!=first_num do
			xo=((xo*multiplier_a+constant_c)%module_m)
			r=xo
			puts r
			randoms << r			
			if randoms.count==50
				break
			end
		end
		randoms
	end
end
