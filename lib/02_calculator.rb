# frozen_string_literal: true

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  array.sum
end

def multiply(num1, num2)
  num1 * num2
end

def power(num1, num2)
  num1**num2
end

def factorial(num)
  # if num == 0
  #   then return 1
  # else
  fact = 1
  (1..num).each do |i|
    fact *= i
  end
  return fact || 1
  # end

  # fact = (1..num).inject(:*) || 1
  fact
end

# Solution google : (1..num).inject(:*) || 1
# : (1..num) : range
# : .inject : pareil que .reduce. PArcours chaque élément de la range et peut lui appliquer une opération
# : || opérateur logique OR : équivaut à if num == 0   then return 1 else
