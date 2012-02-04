# imicable numbers
#	Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#	If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#	For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284.
#	The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#	Evaluate the sum of all the amicable numbers under 10000.
require 'rspec'
module Euler
	#find all divisors except the number itself
	def self.divisors(n)
		divisors=[1]
		(2...n).each do |divisor|
			divisors << divisor if n%divisor == 0
		end
		divisors
	end
	# find all imicable pairs
	def	self.imicable(upto)
		imicables =[]
		(2...upto).each do |n|
			sum = divisors(n).inject(:+)
			imicables << [n,sum] if divisors(sum).inject(:+) == n && n != sum
		end
		imicables.map(&:sort).uniq
	end
	# sum all imicable numbers
	def	self.sum_imicable(upto)
		imicable(upto).flatten.inject(:+)
	end
end


describe Euler do
	it "should return divisors of natural number" do
		Euler.divisors(6).should  eq([1,2,3])
		Euler.divisors(10).should == [1,2,5]
		Euler.divisors(284).inject(:+).should eql(220)
		Euler.divisors(220).inject(:+).should eql(284)
	end
	it "should return imicable numbers" do
		Euler.imicable(300).include?([220,284]).should be_true
	end

	it "should sum all imicable numbers upto" do
		Euler.sum_imicable(10000).should == 31626
	end
end
