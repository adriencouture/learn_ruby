def subtract(x, y)
  x - y
end

def sum(n)
  if n.empty?
    0
  else
  sum = 0
  n.inject { |sum, number| sum += number } # n.reduce (:+)
end
end

def add (number1, number2)
  number1 + number2
end
