# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
	total = 0
	array.each do |x|
		total = total + x
	end
	return total
end

def max_2_sum(array)
sorted = array.sort.reverse
	if array.empty?
		return 0
	else
		if array.length == 1
			return array[0]
		else
			total = 0
			total = sorted[0] + sorted[1]
		end
	end
end


def sum_to_n?(array,n)
	array.permutation(2).to_a
	if array.empty?
		return false
	elsif array.length == 1
		return false
	else
		counter = 0
		array.permutation(2).to_a.each do |x|
			total = x[0] + x[1]
			if total == n
				return true
			end
			counter = counter + 1
		end
		if counter > 0
			return false
		end
	end
end

# Part 2
def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
	if s.length == 0
		return false
	else
		consonant_array = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
		first_letter = s[0].downcase
		if consonant_array.include?(first_letter)
			return true
		else
			return false
		end
	end
end

def binary_multiple_of_4? s
	#check if string is empty
	if s.length == 0
		return false
	#string is not empty
	else
		#check that s only contains numbers
		if (s !~ /\D/)
			#counter for how many numbers are not 0 or 1
			counter = 0
			#run through each element of s
			s.each_char do |x|
				case x
				when "0","1"
					#contains 0 or 1
				else
					counter = counter + 1
				end				
			end
			
			#check if any non 0's or 1's where found
			if counter > 0
				return false
			#do not look for alternative, end if statement
			else
				#reverse string
				#makes it easier to get last numbers for me
				string_reverse = s.reverse
				first = string_reverse[0].to_i
				second = string_reverse[1].to_i

				#check that number is a multiple of four
				#checks that lasts two, now first two, numbers are both zero
				if(first == 0 && second == 0)
					return true
				#if first two numbers are not zero number is not divisible by four
				else
					return false
				end
			#end the search for non 0's and 1's
			end
		#s is not just numbers
		else
			return false
		#end the search for different characters
		end
	#end the search for empty string	
	end
#end of definition  
end

# Part 3

class BookInStock

end


