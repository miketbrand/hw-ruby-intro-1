
# Part 1

def sum(arr)
  s = 0
  arr.each { |x| s+=x }
  return s
end

def max_2_sum(arr)
  
  largest = nil
  second = nil
  
  arr.each do |x|
    if largest.nil?
      largest = x
    elsif second.nil?
      second = x
    elsif x > largest
      second = largest
      largest = x
    elsif x > second
      second = x
    end
  end
  
  if largest.nil?
    return 0
  elsif second.nil?
    return largest
  end
  
  return largest + second
end

def sum_to_n?(arr, n)
  return false if arr.length < 2
  
  for x in 0..(arr.length-1)
    for y in (x+1)..(arr.length-1)
      return true if (arr[x]+arr[y]==n)
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(s)
  my_s = s.downcase
  if (my_s.length == 0)
    return false
  elsif (my_s[0] =~ /[aeiou]/)
    return false
  elsif (my_s[0] =~ /[a-z]/)
    return true
  end
  return false
end

def binary_multiple_of_4?(s)
  len = s.length
  if len == 0
    return false
  elsif len == 1
    return (s=='0')
  elsif ( s =~ /^[01]*00$/ )
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn,price)
    begin
      if isbn == ''
        raise ArgumentError.new("ISBN cannot be an empty string")
      elsif price <= 0
        raise ArgumentError.new("Price must be greater than zero")
      else
        @isbn = isbn
        @price = price
      end
    end
  end
  
  def price_as_string
    return '$%.2f' % @price
  end
end
