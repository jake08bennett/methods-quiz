module MethodsQuiz
	
	# TODO - write has_teen?

	def has_teen(age1, age2, age3)
		if (age1 >= 13 && age1 <= 19) || (age2 >= 13 && age2 <= 19) || (age3 >= 13 && age3 <= 19)
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

	def closer_to(ans, n1, n2)
		close1 = (n2 - ans).abs
		close2 = (n1 - ans).abs
		if close1 < close2
			return n2
		elsif close2 < close1
			return n1
		else
			return 0
		end
	end

	def two_as_one(a, b, c)
		if (a+b=c) || (b+c=a) || (b+a=b)
			return true
		else
			return false
		end
	end


	# TODO - write two_as_one?

	# TODO - write pig_latinify
	def pig_latinify(wordstring)
		str = wordstring.downcase.gsub(/\s+/, "") #gsub.replaces
		if str.start_with?("a") || str.start_with?("e") || str.start_with?("i") || str.start_with?("o") || str.start_with?("u")
			return str + "way"
		elsif str == "shit" || str == "fuck" || str == "arse" || str == "munter" || str == "cock" || str == "pussy" || str == "asshole" ||  str == "motherfucker" |
			return str.gsub("a", "*").gsub("e", "*").gsub("i", "*").gsub("o", "*").gsub("u", "*")
		else
			suffix = str[0]
			str[0] = ""
			return str + suffix + "ay"
		end
	end
end
