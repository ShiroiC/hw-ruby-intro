# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
	if arr!=nil
		sum=0
		for i in 0..arr.length-1
			sum=sum+arr[i]

		end
		return sum
	else
		return 0
	end
end

def max_2_sum arr
  # YOUR CODE HERE
	if arr.length<1
		return 0
	end
	if arr.length<=2
		return arr[0]
	else
		biggest=0
		bigelem=arr[0]
		for i in 1..arr.length-1
			if arr[i]>bigelem
				biggest,bigelem=i,arr[i]
			end
		end
		if biggest==0
			lessbig=1
			lesselem=arr[1]
		else
			lessbig=0
			lesselem=arr[0]
		end
		for i in 0..arr.length-1
			if i!=biggest
				if arr[i]>lesselem
					lessbig, lesselem=i, arr[i]
				end
			end
		end
	end
	return arr[biggest]+arr[lessbig]
end



def sum_to_n? arr, n
  # YOUR CODE HERE
	if arr.length<2
		return false
	end
	for i in 0..arr.length-1
		for j in i+1..arr.length-1
			if (arr[i]+arr[j])==n
				return true
			end
		end
	end
	return false
end

# Part 2


def hello(name)
  # YOUR CODE HERE
	return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
	if s == '' 
		return false 
	end
	if (s =~ /\A[bcdfghjklmnpqrstvwxyz]/i) == 0
		return true

	else
		return false
	end 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
	if s == '' 
		return false
	end
	if s == '0' 
		return true
	end
	if (s =~ /[^01]/) != nil
		return false
	else
		if (s =~ /00\Z/) != nil
			return true
		else
			return false
		end
	end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn,price)
		if isbn=='' or price<=0 
			raise(ArgumentError)
		end
		@isbn=isbn
		@price=price
	end
	def isbn
		return @isbn
	end
	def price
		return @price
	end
	def isbn=(newisbn)
		@isbn=newisbn
	end
	def price=(newprice)
		@price=newprice
	end
	def price_as_string
		@price=format("$%.2f",@price)
	end
end

