=begin
Euler published the remarkable quadratic formula:

n² + n + 41

It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.

Using computers, the incredible formula  n²  79n + 1601 was discovered, which produces 80 primes for the consecutive values n = 0 to 79. The product of the coefficients, 79 and 1601, is 126479.

Considering quadratics of the form:

n² + an + b, where |a|  1000 and |b|  1000

where |n| is the modulus/absolute value of n
e.g. |11| = 11 and |4| = 4
Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.
=end

require 'rspec'
require 'prime'
module Euler27
	class << self
		def	formula(a,b)
			return [] if b<a
 			ar = (0...(b-a)).map {|n| (n**2 + a*n + b)}
			ar.any?{|i| !i.prime?} ? 0 : ar.length
		end
		def	primes
			a=[]
			Prime.each{|i|break if i >= 1000;  a<< i}
			a
		end
	end
end


describe Euler27 do
	specify {Euler27.formula(1,41).size.should == 40}
	it "" do
		sizes=[]
		primes = Euler27.primes
		(0...1000).each do |a|
			primes.each do |b|
				sizes << Euler27.formula(a,b)
			end
		end
		sizes.size.should == 134
	end
end
