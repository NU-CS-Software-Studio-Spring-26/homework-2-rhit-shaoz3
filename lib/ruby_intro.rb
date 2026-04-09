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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
