def sum(a)
    [*1..a].map{|i|i**2}.reduce(:+)
end

def square(a)
    [*1..a].reduce(:+)**2
end

puts -sum(100)+square(100)

