# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each { |x| sum += x }
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  arr.sort!.reverse!
  return (arr[0] + arr[1])
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 1
    return false
  end
  i = 0
  while (i < arr.length)
    j = i + 1
    while (j < arr.length)
      if arr[i] + arr[j] == n
        return true
      end
      j += 1
    end
    i += 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0 || !s[0].match(/^[[:alpha:]]$/)
    return false
  end
  if (s[0] == "A" || s[0] == "E" || s[0] == "I" || s[0] == "O" || s[0] == "U" || 
    s[0] == "a" || s[0] == "e" || s[0] == "i" || s[0] == "o" || s[0] == "u" )
    return false
  end 
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.count('01') != s.size
    return false
  end
  if s[s.length - 1] == '0' && s[s.length - 2] == '0'
    return true
  end

  return false
  
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(i, p)
    @isbn = i
    @price = p
    
    if @isbn.length == 0 || @price <= 0
      raise ArgumentError
    end
  end
  
  attr_accessor :isbn
	attr_accessor :price
	
  def price_as_string()
    return "$#{'%.2f' % @price}"
  end
end

b1 = BookInStock.new("isbn1", 20)
puts (b1.price_as_string)
