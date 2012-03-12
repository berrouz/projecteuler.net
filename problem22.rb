names=File.open("problem22/names.txt", "r+").read.split(',').map{ |word| word.gsub(/"/, "") }.sort

def score(names)
  names.each_with_index.map { |name,i| sum_of_codes(name) *(i+1) }.inject(:+)
end

def sum_of_codes(word)
  word.split("").inject(0) {|sum,i| sum=sum + i.ord-64 }
end
puts score(names)