names=eval("[#{File.read("problem22/names.txt")}]").sort
puts names.each_with_index.map { |n, i| n.each_byte.map { |c| (c-64)*i.next }.inject(:+) }.inject(:+)