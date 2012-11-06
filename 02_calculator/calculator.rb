def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(values)
  values.length == 0 ? 0 : values.inject(:+)
end

def multiply (a,*b)
  b.length > 0 ? a * b.inject(:*) : a
end

def raises a,b
  a**b
end

def factorial (x)
  x == 0 ? 1 : 1.upto(x).inject(:*)
end
