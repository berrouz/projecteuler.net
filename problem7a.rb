



def prime?(a)
    if [*3..a/2].each {|i| break if a%i==0}
        true
    else
        false
    end
end

def primes(max)
    [*1..max].delete_if {|i| i > 10 && i%2==0 || i%5==0 || i%7 ==0 || i%3==0}#.delete_if {|i| !prime?(i)}
end

puts primes(1000).map {|i| [prime?(i),i] }

