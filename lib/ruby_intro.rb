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
  # YOUR CODE HERE
end

# Part 3

class BookInStock

end


