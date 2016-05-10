# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if(arr.length != 0)
    arr.inject {|kq,n| kq + n}
    return kq
  else
    return 0
  end
end
# cong so hien tai cua vong lap vao bien kq
def max_2_sum arr
  if(arr.length == 1)
    return arr[0]
  elsif(arr.length == 0)
    return 0
  else
    arr = arr.sort.reverse
    #sap xep mang arr theo thu tu giam dan
    kq = arr[0]+arr[1]
    return kq
  end
end

def sum_to_n? arr, n
  for i in arr[0]...arr[arr.length - 1]
    for j in arr[1]...arr[arr.length]
      if i + j == n
        return true
      else
        return false
      end
    end
  end
end

# Part 2

def hello(name)
  puts "Hello,"<< name
end

def starts_with_consonant? s
  if s[0] == "A" || s[0] == "E" || s[0] == "I" || s[0] == "O" || s[0] == "U" 
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  a = s.to_i(2)
	if a % 4 == 0
	  return true
	else 
	  return false
	end
end

# Part 3

class BookInStock
   attr_accessor :isbn, :price
  def book( isbn, price)
    raise ArgumentError if isbn.length == 0 || price <= 0 
    @isbn = isbn
    @price = price
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
