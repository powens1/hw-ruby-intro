# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
	#start the total at zero
	total = 0
	#go through each element of the array
	array.each do |x|
		#for each element add it to the current total
		total = total + x
	end
	#return the final total of all elements of the array added together
	return total
end

def max_2_sum(array)
#sort the given array first by smallest to largest then reverse it largest to smallest	
sorted = array.sort.reverse
	#check if the array is empty
	if array.empty?
		#return the value of 0
		return 0
	#end of checking for empty array
	end
	#check if the array has only one element
	if array.length == 1
		#return the value of just the one element
		return array[0]
	end
	#set the initial total to zero
	total = 0
	#set the new total to the two largest elements
	total = sorted[0] + sorted[1]

end


def sum_to_n?(array,n)
	#check if the array is empty
	if array.empty?
		#return false is array is empty
		return false
	#end of checking for empty array
	end
	#check if the array has only one element
	if array.length == 1
		#return false if the array has only one element
		return false
	#end of checking for single element
	end

	array.permutation(2).to_a.each do |x|
		total = x[0] + x[1]
		if total == n
			return true
		end
	end
	return false
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
		#if it is return false
		return false
	end

	#counter for how many numbers are not 0 or 1
	counter = 0
	#run through each element of s
	s.each_char do |x|
		#in the case of each element x
		case x
		#when x is equal to "0" or "1"
		when "0","1"
			#contains a "0" or "1"
		else
			#add 1 to the counter everything there isn't a "0" or "1"
			counter = counter + 1
		#end of case statement
		end				
	#end of each character search
	end
			
	#check if any non 0's or 1's where found
	if counter > 0
		#if it contained any non 0's or 1's then it wasn't a binary number. No reason to continue.
		return false
	end

	#reverse string
	#makes it easier to get last numbers for me
	string_reverse = s.reverse
	first = string_reverse[0].to_i
	second = string_reverse[1].to_i
				
	#checks that number is a multiple of four
	#checks that lasts two, now first two, numbers are both zero
	if(first == 0 && second == 0)
		return true
	#if first two numbers are not zero number is not divisible by four
	else
		return false
	end



#end of definition  
end

# Part 3

class BookInStock
	#getter/setter
	attr_accessor :isbn, :price
	


	#constructor, takes two parameters
	def initialize(isbn, price)
		#error handling if isbn is empty or price is less than or equal to zero
		if isbn.empty? || price <= 0
			raise ArgumentError.new("Improper ISBN given!")
		end
		
		@isbn = isbn
		@price = price
	end
	
	#defining price_as_string
	def price_as_string
		string_price = price.to_f.to_s
		decimal_index = string_price.index(".")
		if string_price[decimal_index + 2].nil?
				string_price = string_price + "0"
		end
		return "$" + string_price
	end

	
end


