
def prime?(a)
    ![*2..a-1].any? {|i| a%i==0}
end

def primes(max)
    [*1..max].delete_if {|i| !prime?(i)}
end



def start(s)
    threads =[]
    results= []

    [*1..s].each do |integer|
    threads << Thread.new(integer){|i|
			results << i if prime?(i)
    }
    end
    threads.each {|t| t.join}
    results
end

puts start(120000)

