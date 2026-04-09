# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0) {|sum, ar| sum + ar}
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  arr.sort().last(2).sum
end

def sum_to_n? arr, n
  return false if arr.empty?
  return false if arr.length == 1
  arr.each do |num|
    val = n - num
    arr1 = arr - [num]
    return true if arr1.include?(val)
  end
  false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  list = ['a', 'e', 'i', 'o', 'u']
  return false if s.empty? or s[0].match?(/\P{L}/)
  return false if list.include?(s[0].downcase)
  true
end

def binary_multiple_of_4? s
  return false if s.empty? or !(s =~ /\A-?\d+(\.\d+)?\z/)
  return true if s.to_i % 4 == 0
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, "isbn cannot be empty" if isbn.empty?
    raise ArgumentError, "price must be positive" if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$%.2f" % @price
  end

end
