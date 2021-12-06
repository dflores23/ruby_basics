# Pre-defined class
require 'prime'

# ##______Hello World______#

# ## 1 Print "Hello World" to the console
 p "Hello World"

# ## 2 Interpolate the adjectivevariable into the Hello World string using #{}

adjective = "Big Bad"

 p "Hello #{adjective} World"

#  ## 3 Save "Hello World" to a variable. Without changing the letters in your code manually, permanently change "Hello World" to all uppercased letters.

 variable = "Hello World"

 p variable.upcase

##______Nums Array and Enumerables____#

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

## 1 Use .uniqto print the array with all duplicate entries removed

p nums.uniq # prints the array with all duplicate entries removed

## 2 Next, use .pushand .pop, .shift.unshiftand .lengthon the array as you would with javaScript (if you need to add a number, add 5)

p nums.push 5 # adds a 5 to the end
p nums.shift  # prints the first form the nums array 
p nums.pop  # prints the last form the nums array
p nums.shift # it removes the first element of the num array
p nums.unshift # it returns the shifted array with argument element in place
p nums.length

## 3 Use .include?to check if the array contains the number 8
p nums.include? 8

## 4 Use .find_allto find all the numbers greater than 10
p nums.find_all {|x| x >= 10}

## 5 use .all?to check if all the numbers are greater than 0?
p nums.all? { |x| x.size > 0 }

## 6 use any?to check if there are any numbers that are divisible by 8
puts nums.any?(8)

## 7 use .countto let you know how many numbers are greater than 4
p nums.count {|x| x >= 4}

## 8 use .each_with_indexto print each item times its index
nums.each_with_index do |num, idx|
    puts "#{num}"
    
  end

## 9 .findthe number that is divisible by 7 and 5 and is greater than 0
p nums.find{|n| n % 7 > 0}
p nums.find{|n| n % 5 > 0}

## 10 .find_index of the number that is divisible by 5 and 7 and is greater than 0
p nums.find_index{|n| n % 7 > 0}
p nums.find_index{|n| n % 5 > 0}

## 11 return the .first3 numbers
p nums.first(3)

## 12 return the .last5 numbers
p nums.last(5)

## 13 .group_by the modulo of 3 ( % 3)
p nums.group_by {|n| n / 3}

## 14 use minmaxto return the smallest and largest number
p nums.min
p nums.max

## 15 use .rejectto return all the numbers that are NOT divisible by 3
p nums.reject {|n| n % 3 == 0}

## 16use .selectto return all the numbers divisible by 5
p nums.select {|n| n % 5 == 0}


###_________COLOR ARRAY_____###

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

## 1 Print out a random color.
p colors.sample

## 2 Print out the colorsarray in reverse order.
 p colors.reverse

 ## 3 Print out all of the colors in the array with all capital letters.
p colors.map!(&:upcase)

###________METHODS_________###

## Write a method named find_areathat finds the area of a rectangle when given values for width and height

## REMEMBER: In Ruby, the keyword returnis implied and can be omitted!
def find_area height, width
    height * width
end
 puts find_area 10, 5

 ## Write a method named multiply_each_by_fivethat will loop over the given numsarray below and print each number multiplied by 5
 nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

 def multiply_each_by_five arr
    arr.each { |x| puts x * 5}
 end
p multiply_each_by_five nums

###_____________Methods______________###

# Hashes

book = {
    title: 'The Great Gatsby',
    author: 'F Scott Fitzgerald',
    year: 1925,
    price: 10
  }
  
  lamp = {
    type: 'reading',
    brand: 'Ikea',
    price: 25
  }
  
  table = {
    type: 'bed side',
    brand: 'Crate & Barrel',
    color: 'birch',
    price: 50
  }

  ## Write a method named print_pricethat will take in any hash and return the price of the item.

  def print_price hash
    hash[:price]
  end
p print_price book

## Write a method named print_item_sumsthat will take in two hashes and will return the sum of the prices for the items in the hashes.
def print_item_sums hash1, hash2
    hash1[:price] + hash2[:price]
end

p print_item_sums book, table

###____________Euler Problem 1____________###
##If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
##Find the sum of all the multiples of 3 or 5 below 1000.
def multiples
    (1..999).select do |i|
      i % 3 == 0 || i % 5 == 0
    end
  end
  
  def sumMultiples(multiples)
    total = multiples.inject(&:+)
  end
  
  p sumMultiples multiples

###______________PRIME______________###

## 1 Write a method called check_prime? that will test whether a number is Prime. The method will return true if Prime, false if not.

#__________________________From stackoverflow________________________________#
# If a number n is not a prime, it can be factored into two factors a and b:

# n = a * b
# Now a and b can't be both greater than the square root of n, 
# since then the product a * b would be greater than sqrt(n) * sqrt(n) = n. 
# So in any factorization of n, at least one of the factors must be smaller than the square root of n, 
# and if we can't find any factors less than or equal to the square root, n must be a prime.
#__________________________From stackoverflow________________________________#

def check_prime? n
    (2..Math.sqrt(n)).none? {|i| n % i == 0}
  end
  
p check_prime? 3

## 2 Write another method called get_primes that will print all the Primes up to an arbitrary limit. 
## For example, if you invoke your method with get_primes 100, it will print all the Prime numbers up to and including 100.

Prime.each(100) do |prime|
    p prime 
end

