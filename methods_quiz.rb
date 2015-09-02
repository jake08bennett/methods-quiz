module MethodsQuiz
	
	# TODO - write has_teen?

	def has_teen(a,b,c)
		if a > 13 && a < 19
			age1 = true
	 elsif b>13 && b < 19
			age2 = true
   elsif c>13 && c<19
   		age3 = true
   end
   if age1= true || age2 = true || age3 = true
   		return true
   else
   		return false
		end
	end
	
	# TODO - write not_string
	def not_string(str)
		if str.start_with?("not")
			return str
		else
			return "not "+ str
		end
	end
	
	# TODO - write icy_hot?
	def icy_hot?(a, b)
		if (a >= 100 && b <= 0) || (b >= 100 && a <= 0)
			return true
		else
			return false
		end
	end
	
	# TODO - write closer_to

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end